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
$addressID=$_POST['addressID'];


    $sqlsaveaddress="UPDATE customer_address SET name='$name',contact='$contact',address1='$address1',address2='$address2',zip='$zip',city='$city',state='$state',addressType='$addressType' WHERE addressID='$addressID'";
    
if($conn->query($sqlsaveaddress)===TRUE){
    echo "Success";
}else{
    echo "Failed";
}
?>