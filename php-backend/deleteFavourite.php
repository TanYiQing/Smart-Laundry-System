<?php
include_once("dbconnect.php");
$laundryID=$_POST['laundryID'];
$email=$_POST['email'];


$sqldeletefavourite="DELETE FROM favourite_laundry WHERE laundryID='$laundryID' AND email='$email'";
if($conn->query($sqldeletefavourite)===true){
    echo "Success";
}else{
    echo "Failed";
}
?>