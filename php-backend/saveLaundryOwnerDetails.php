<?php
include_once("dbconnect.php");

$laundryID=$_POST['laundryID'];
$laundryOwnerName=$_POST['ownername'];
$laundryOwnerContact=$_POST['ownercontact'];


    $sqlsaveLaundryOwnerDetails="UPDATE laundry SET laundryOwnerName='$laundryOwnerName', laundryOwnerContact='$laundryOwnerContact' WHERE laundryID='$laundryID'";

if($conn->query($sqlsaveLaundryOwnerDetails)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>