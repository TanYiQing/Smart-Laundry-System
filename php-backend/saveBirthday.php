<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$birthday=$_POST['birthday'];
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlsavebirthday="UPDATE users_customers SET birthday='$birthday' WHERE email='$email'";
    }else{
        $sqlsavebirthday="UPDATE users_laundryowner SET birthday='$birthday' WHERE email='$email'";
    }
}


if($conn->query($sqlsavebirthday)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>