<?php

// use PHPMailer\PHPMailer\PHPMailer;
// use PHPMailer\PHPMailer\Exception;

// require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/Exception.php';
// require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/PHPMailer.php';
// require '/home8/hubbuddi/public_html/270607/onesource/php/PHPMailer/SMTP.php';

include_once("dbconnect.php");
$name=$_POST['name'];
$phone=$_POST['phone'];
$email=$_POST['email'];
$laundryID=$_POST['laundryID'];
$machineID=$_POST['machineID'];
$machineType=$_POST['machineType'];
$error=$_POST['error'];


$sqlSendReport="INSERT INTO error_Reported(name,phone,email,laundryID,machineID,machineType,error) VALUES('$name','$phone','$email','$laundryID','$machineID','$machineType','$error')";

if ($conn->query($sqlSendReport) === TRUE){
    echo "Success";
    // sendEmail($first_name,$last_name,$email,$otp,$role);
}else{
    echo "Failed";
}

function sendEmail($first_name,$last_name,$email,$otp){
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