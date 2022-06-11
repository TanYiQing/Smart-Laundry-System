<?php
include_once("dbconnect.php");

$orderId=$_POST['orderId'];
$status=$_POST['status'];

$sqlupdateorderstatus="UPDATE customer_order SET status='$status' WHERE orderID='$orderId'";

if($conn->query($sqlupdateorderstatus)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>