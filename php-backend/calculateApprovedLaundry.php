<?php
include_once("dbconnect.php");

$email=$_POST['email'];

    $sqllaundryApproved = "SELECT * FROM laundry WHERE email = '$email' AND approve = '1'";
    $sqllaundryTotal = "SELECT * FROM laundry WHERE email = '$email'";
        
$result1 = $conn->query($sqllaundryApproved);
$result2 = $conn->query($sqllaundryTotal);

if ($result1->num_rows > 0 || $result2->num_rows > 0){
    $count1=$result1->num_rows;
    $count2=$result2->num_rows;
    $percentageApproval=($count1/$count2)*100;
    
    echo $percentageApproval;
}
else{
    echo "Failed";
}

?>