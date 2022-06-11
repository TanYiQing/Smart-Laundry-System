<?php
include_once("dbconnect.php");
$name=$_POST['name'];
$contact=$_POST['contact'];
$address1=$_POST['address1'];
$address2=$_POST['address2'];
$zip=$_POST['zip'];
$city=$_POST['city'];
$state=$_POST['state'];
$addressType=$_POST['addressType'];
$email=$_POST['email'];

$sqladdaddress="INSERT INTO customer_address(name,contact,address1,address2,zip,city,state,addressType,email) VALUES('$name','$contact','$address1','$address2','$zip','$city','$state','$addressType','$email')";
if($conn->query($sqladdaddress)===true){
    echo "Success";
}else{
    echo "Failed";
}
?>