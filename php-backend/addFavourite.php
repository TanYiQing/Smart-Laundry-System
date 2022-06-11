<?php
include_once("dbconnect.php");
$laundryID=$_POST['laundryID'];
$email=$_POST['email'];


$sqladdfavourite="INSERT INTO favourite_laundry(laundryID,email) VALUES('$laundryID','$email')";
if($conn->query($sqladdfavourite)===true){
    echo "Success";
}else{
    echo "Failed";
}
?>