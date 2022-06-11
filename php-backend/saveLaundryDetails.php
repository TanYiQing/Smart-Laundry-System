<?php
include_once("dbconnect.php");

$laundryID=$_POST['laundryID'];
$laundryName=$_POST['laundryName'];
$laundryAddress1=$_POST['laundryAddress1'];
$laundryAddress2=$_POST['laundryAddress2'];
$zip=$_POST['zip'];
$city=$_POST['city'];
$state=$_POST['state'];


    $sqlsaveLaundryDetails="UPDATE laundry SET laundryName='$laundryName', laundryAddress1='$laundryAddress1',laundryAddress2='$laundryAddress2',laundryZIP='$zip',laundryCity='$city',laundryState='$state' WHERE laundryID='$laundryID'";

if($conn->query($sqlsaveLaundryDetails)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>