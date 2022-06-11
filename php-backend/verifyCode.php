<?php
include_once("dbconnect.php");

$email=$_POST['email'];
$resetotp=$_POST['code'];
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlverifycode="SELECT * FROM users_customers WHERE email='$email' AND resetotp='$resetotp'";
    }else{
        $sqlverifycode="SELECT * FROM users_laundryowner WHERE email='$email' AND resetotp='$resetotp'";
    }
}

$result = $conn->query($sqlverifycode);
if ($result->num_rows > 0) {
    echo "Success";
}else{
    echo "Failed";
}

?>