<?php
error_reporting(0);
include_once("dbconnect.php");
$email=$_GET['email'];
$name=$_GET['name'];
$mobile=$_GET['phone'];
$ordermethod=$_GET['ordermethod'];
$addressID=$_GET['addressID'];
$collecttime=$_GET['collecttime'];
$notetolaundry=$_GET['notetolaundry'];
$laundryID= $_GET['laundryID'];
$machineID=$_GET['machineID'];
$machineType=$_GET['machineType'];
$price=$_GET['price'];
$addon1=$_GET['addon1'];
$addon2=$_GET['addon2'];
$addon3=$_GET['addon3'];
$totalPrice=$_GET['totalPrice'];
$status="Order Confirmed";

$data = array(
    'id' =>  $_GET['billplz']['id'],
    'paid_at' => $_GET['billplz']['paid_at'] ,
    'paid' => $_GET['billplz']['paid'],
    'x_signature' => $_GET['billplz']['x_signature']
);

$paidstatus = $_GET['billplz']['paid'];

if ($paidstatus=="true"){
  $receiptid = $_GET['billplz']['id'];
  $signing = '';
    foreach ($data as $key => $value) {
        $signing.= 'billplz'.$key . $value;
        if ($key === 'paid') {
            break;
        } else {
            $signing .= '|';
        }
    }
    $sqltransfer="INSERT INTO customer_order(receiptID,email,name,phone,ordermethod,addressID,collecttime,notetolaundry,laundryID,machineID,machineType,price,addon1,addon2,addon3,totalPrice,status) VALUES ('$receiptid','$email','$name','$mobile','$ordermethod','$addressID','$collecttime','$notetolaundry','$laundryID','$machineID','$machineType','$price','$addon1','$addon2','$addon3','$totalPrice','$status')";
    if($conn->query($sqltransfer)===true){
       
    
    }else{
    }

date_default_timezone_set("Asia/Kuala_Lumpur");
    echo '
    <br>
    <br>
    <body>
    <div>
    <h2>
    <br>
    <br>
    <center><div style="background-color:orange">Order Receipt</center>
    </h2>
    </div>
    <div style="background-color:OldLace; padding:20px 20px 20px 20px">
        <table border=0 width=90% align=center>
        <tr><td>Receipt ID</td><td>'.$receiptid.'</td></tr>
        <tr><td>Email to </td><td>'.$email. ' </td></tr>
        <td>Amount </td><td>RM '.$orderamount.'</td></tr>
        <tr><td>Payment Status </td><td style="color:green">Paid Successful</td></tr>
        <tr><td>Date </td><td>'.date("d/m/Y").'</td></tr>
        <tr><td>Time </td><td>'.date("h:i a").'</td></tr>
        </table>
    </div>
   
    <br>
    <p><center>Press back button to return to OneSource</center></p>
    </div>
    </body>';
    
}
else{
     echo 'Payment Failed!';
}
?>