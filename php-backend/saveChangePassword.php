<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$confirmpassword=$_POST['confirmpassword'];
$passsha1=sha1($confirmpassword);
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlsaveChangePassword="UPDATE users_customers SET password='$passsha1' WHERE email='$email'";
    }else{
        $sqlsaveChangePassword="UPDATE users_laundryowner SET password='$passsha1' WHERE email='$email'";
    }
}


if($conn->query($sqlsaveChangePassword)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>