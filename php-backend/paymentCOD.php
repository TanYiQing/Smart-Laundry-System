<?php
include_once("dbconnect.php");
$email=$_POST['email'];
$name=$_POST['name'];
$phone=$_POST['phone'];
$orderMethod=$_POST['orderMethod'];
$addressID=$_POST['addressID'];
$collectTime=$_POST['collectTime'];
$note = $_POST['note'];
$laundryID=$_POST['laundryID'];
$machineID=$_POST['machineID'];
$machineType=$_POST['machineType'];
$price=$_POST['price'];
$addon1=$_POST['addon1'];
$addon2=$_POST['addon2'];
$addon3=$_POST['addon3'];
$totalPrice=$_POST['totalPrice'];
$status="Order Placed";
$date=$_POST['date'];


$sqlplaceOrderCOD="INSERT INTO customer_order(receiptID,email,name,phone,ordermethod,addressID,collecttime,notetolaundry,laundryID,machineID,machineType,price,addon1,addon2,addon3,totalPrice,status) VALUES('','$email','$name','$phone','$orderMethod','$addressID','$collectTime','$note','$laundryID','$machineID','$machineType','$price','$addon1','$addon2','$addon3','$totalPrice','$status')";
  

if ($conn->query($sqlplaceOrderCOD)===true){
    echo "Success";
    $sqlAddtoTotalAmount="UPDATE customer_report SET transactionAmount = transactionAmount + $totalPrice WHERE date='$date' AND laundryID='$laundryID'";
    if ($conn->query($sqlAddtoTotalAmount)===true){
        
    }else{
        
    }
}else{
    echo "Failed";
}

?>