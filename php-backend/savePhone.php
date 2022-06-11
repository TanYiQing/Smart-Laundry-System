<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$phone=$_POST['phone'];
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlsavephone="UPDATE users_customers SET phone='$phone' WHERE email='$email'";
    }else{
        $sqlsavephone="UPDATE users_laundryowner SET phone='$phone' WHERE email='$email'";
    }
}


if($conn->query($sqlsavephone)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>