<?php
    error_reporting(0);
    include_once("dbconnect.php");
    $email = $_GET['email'];
    $otp = $_GET['key'];
    $role = $_GET['role'];
    
    if(isset($role)){
        if($role=="Customer"){
            $sql = "SELECT * FROM users_customers WHERE email = '$email' AND otp='$otp'";
        }else{
            $sql = "SELECT * FROM users_laundryowner WHERE email = '$email' AND otp='$otp'";
        }
    }
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        if(isset($role)){
        if($role=="Customer"){
            $sqlupdatecustomer = "UPDATE users_customers SET otp = '0' AND resetotp='0' WHERE email = '$email' AND otp = '$otp'";
        }else{
            $sqlupdatelaundryowner = "UPDATE users_laundryowner SET otp = '0' AND resetotp='0' WHERE email = '$email' AND otp = '$otp'";
        }
    }
     
        if ($conn->query($sqlupdatecustomer) === TRUE){
            echo 'Account verification successful, login with your account now!';
        }else if ($conn->query($sqlupdatelaundryowner) === TRUE){
            echo 'Account verification successful, login with your account now!';
        }else{
            echo 'Account verification failed, please try to sign up again...';
        }   
    }else{
        echo "Account verification failed, please try to sign up again...";
    }
?>