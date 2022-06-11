<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$gender=$_POST['gender'];
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlsavegender="UPDATE users_customers SET gender='$gender' WHERE email='$email'";
    }else{
        $sqlsavegender="UPDATE users_laundryowner SET gender='$gender' WHERE email='$email'";
    }
}


if($conn->query($sqlsavegender)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>