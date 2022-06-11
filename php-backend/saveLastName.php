<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$lastName=$_POST['lastName'];
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlsaveLastName="UPDATE users_customers SET lastName='$lastName' WHERE email='$email'";
    }else{
        $sqlsaveLastName="UPDATE users_laundryowner SET lastName='$lastName' WHERE email='$email'";
    }
}


if($conn->query($sqlsaveLastName)===TRUE){
    echo "Success";
}else{
echo "Failed";
}
?>