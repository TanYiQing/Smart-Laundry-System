<?php
error_reporting(0);
include_once("dbconnect.php");
$laundryID = $_POST['laundryID'];


    $sqlloadLaundryID = "SELECT * FROM laundry WHERE laundryID = '$laundryID'";
   


$result = $conn->query($sqlloadLaundryID);

if ($result->num_rows > 0) {
    while ($row = $result ->fetch_assoc()){
        echo $data = $row["laundryName"];
    }
}

else{
    echo "Failed";
}

?>