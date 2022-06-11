<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$firstName=$_POST['firstName'];
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlsaveFirstName="UPDATE users_customers SET firstName='$firstName' WHERE email='$email'";
    }else{
        $sqlsaveFirstName="UPDATE users_laundryowner SET firstName='$firstName' WHERE email='$email'";
    }
}


if($conn->query($sqlsaveFirstName)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>