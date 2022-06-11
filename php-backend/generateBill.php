<?php
error_reporting(0);

$email=$_GET['email'];
$name=$_GET['name'];
$mobile=$_GET['mobile'];
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


$api_key='08bfa8ac-b29e-45c2-aa30-539da041c4f2';
$collection_id='7k7e3bxl';
$host='https://www.billplz-sandbox.com/api/v3/bills';

$data = array(
    'collection_id' => $collection_id,
    'email' => $email,
    'mobile'=> $mobile,
    'name'=> $name,
    'amount'=> $totalPrice*100,
    'callback_url'=>"https://hubbuddies.com/270607/onesource/php/return_url",
    'redirect_url'=>"https://hubbuddies.com/270607/onesource/php/paymentUpdate.php?email=$email&name=$name&phone=$mobile&ordermethod=$ordermethod&addressID=$addressID&collecttime=$collecttime&notetolaundry=$notetolaundry&laundryID=$laundryID&machineID=$machineID&machineType=$machineType&price=$price&addon1=$addon1&addon2=$addon2&addon3=$addon3&totalPrice=$totalPrice&status=$status",
    'description' => 'Payment for order',
    );
    
$process = curl_init($host);
curl_setopt($process, CURLOPT_HEADER, 0);
curl_setopt($process, CURLOPT_USERPWD, $api_key . ":");
curl_setopt($process, CURLOPT_TIMEOUT, 30);
curl_setopt($process, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($process, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($process, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($process, CURLOPT_POSTFIELDS, http_build_query($data) );

$return = curl_exec($process);
curl_close($process);

$bill = json_decode($return, true);

echo "<pre>".print_r($bill,true)."</pre>";
header("Location:{$bill['url']}");

?>