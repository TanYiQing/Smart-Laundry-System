<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/Exception.php';
require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/PHPMailer.php';
require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/SMTP.php';

include_once("dbconnect.php");
$email=$_POST['email'];
$resetotp=rand(100000,999999);
$role=$_POST['role'];

if(isset($role)){
    if($role=="Customer"){
        $sqlresetotp="UPDATE users_customers SET resetotp = '$resetotp' WHERE email='$email'";
    }else{
        $sqlresetotp="UPDATE users_laundryowner SET resetotp = '$resetotp' WHERE email='$email'";
    }
        
}

if ($conn->query($sqlresetotp) === TRUE){
    echo "Success";
    sendEmail($email,$resetotp);
}else{
    echo "Failed";
}

function sendEmail($email,$resetotp){
    $mail = new PHPMailer(true);
    $mail->SMTPDebug = 0; //Disable verbose debug output
    $mail->isSMTP(); //Send using SMTP
    $mail->Host= 'mail.hubbuddies.com'; //Set the SMTP server to send through
    $mail->SMTPAuth= true; //Enable SMTP authentication
    $mail->Username= 'onesourcelaundryapp@hubbuddies.com'; //SMTP username
    $mail->Password= 'onesourcelaundryapp'; //SMTP password
    $mail->SMTPSecure= 'tls';         
    $mail->Port= 587;
    
    $from = "onesourcelaundryapp@hubbuddies.com";
    $to = $email;
    $subject = "Change Password";
    $message = "Hi,<br><br>
    
	            Welcome to OneSource! Your account requested to change password!<br><br>
	            
                Your username is the email you registered with: $email.Your verification code is <b>$resetotp</b><br><br><br><br><br><br><br><br><br><br><br><br>
                
                
                
                
                
                You have been sent this email because this account <u>$email</u> was attempt to reset password<br>
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