<?php
error_reporting(0);
include_once("dbconnect.php");
$email = $_POST['email'];
$password = sha1($_POST['password']);

$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqllogin = "SELECT * FROM users_customers WHERE email = '$email' AND password = '$password' AND otp = '0'";
    }else{
        $sqllogin = "SELECT * FROM users_laundryowner WHERE email = '$email' AND password = '$password' AND otp = '0'";
    }
}


$result = $conn->query($sqllogin);

if ($result->num_rows > 0) {
    while ($row = $result ->fetch_assoc()){
        echo $data = "Success#".$row["firstName"]."#".$row["lastName"]."#".$row["email"]."#".$row["dateRegister"];
    }
}

else{
    echo "Failed";
}

?>