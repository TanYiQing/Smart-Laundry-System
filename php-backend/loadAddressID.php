<?php
error_reporting(0);
include_once("dbconnect.php");
$addressID = $_POST['addressID'];


    $sqlloadAddressID = "SELECT * FROM customer_address WHERE addressID = '$addressID'";
   


$result = $conn->query($sqlloadAddressID);

if ($result->num_rows > 0) {
    while ($row = $result ->fetch_assoc()){
        echo $data = "Success#".$row["address1"].",".$row["address2"].",".$row["zip"].",".$row["city"].",".$row["state"]."#".$row["addressType"];
    }
}

else{
    echo "Failed";
}

?>