<?php
include_once("dbconnect.php");

$addressID=$_POST['addressID'];
$sqldeleteaddress="DELETE FROM customer_address WHERE addressID = '$addressID'";
  
if ($conn->query($sqldeleteaddress) === TRUE){
       echo "Success";
    }else {
        echo "Failed";
    }

?>