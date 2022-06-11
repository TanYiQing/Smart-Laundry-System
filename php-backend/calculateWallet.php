<?php
include_once("dbconnect.php");

$email=$_POST['email'];

if (isset($email)){
    $sqlcalculatewallet = "SELECT SUM(a.totalPrice) AS totalAmount FROM customer_order a JOIN laundry b ON b.laundryID = a.laundryID WHERE b.email='$email' AND a.status='Order Completed'";}

$result = $conn->query($sqlcalculatewallet);

if ($result->num_rows > 0){
    while ($row = $result -> fetch_assoc()){
        echo $row["totalAmount"];
    
    }
   
}else{
    echo "nodata";
}
?>