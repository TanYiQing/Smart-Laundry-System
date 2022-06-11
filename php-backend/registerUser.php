<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/Exception.php';
require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/PHPMailer.php';
require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/SMTP.php';

include_once("dbconnect.php");
$first_name=$_POST['firstName'];
$last_name=$_POST['lastName'];
$email=$_POST['email'];
$password=$_POST['password'];
$passsha1=sha1($password);
$otp=rand(100000,999999);

$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlregister="INSERT INTO users_customers(firstName,lastName,email,password,otp) VALUES('$first_name','$last_name','$email','$passsha1','$otp')";
    }else{
        $sqlregister="INSERT INTO users_laundryowner(firstName,lastName,email,password,otp) VALUES('$first_name','$last_name','$email','$passsha1','$otp')";
    }
        
}

if ($conn->query($sqlregister) === TRUE){
    echo "Success";
    sendEmail($first_name,$last_name,$email,$otp,$role);
}else{
    echo "Failed";
}

function sendEmail($first_name,$last_name,$email,$otp){
    $mail = new PHPMailer(true);
    $mail->SMTPDebug = 0; //Disable verbose debug output
    $mail->isSMTP(); //Send using SMTP
    $mail->Host= ''; //Set the SMTP server to send through
    $mail->SMTPAuth= true; //Enable SMTP authentication
    $mail->Username= ''; //SMTP username
    $mail->Password= ''; //SMTP password
    $mail->SMTPSecure= '';         
    $mail->Port= ;
    
    $from = "onesourcelaundryapp@hubbuddies.com";
    $to = $email;
    $subject = "Account Verification";
    $message = "Hi $first_name $last_name,<br><br>
    
	            Welcome to OneSource! Your account has been successfully created!<br><br>
	            
                Your username is the email you registered with: $email.Please <a href='https://hubbuddies.com/270607/onesource/php/verifyUser.php?email=".$email."&key=".$otp."&role=".$role."'>Click Here</a> to verify your account.<br><br><br><br><br><br><br><br><br><br><br><br>
                
                
                
                
                
                You have been sent this email because an account was created on OneSource with the email address <u>$email</u><br>
                If you have received it in error, please ignore this email.";
    
    $mail->setFrom($from,"OneSource");
    $mail->addAddress($to);//Add a recipient
    
    //Content
    $mail->isHTML(true);//Set email format to HTML
    $mail->Subject = $subject;
    $mail->Body    = $message;
    $mail->send();
}
?>