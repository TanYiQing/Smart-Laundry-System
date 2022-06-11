<?php
include_once("dbconnect.php");

$email=$_POST['email'];

if (isset($email)){
    $sqlcalculatnumbererror = "SELECT COUNT(a.error_ID) AS numberError FROM error_Reported a JOIN laundry b ON b.laundryID = a.laundryID WHERE b.email='$email'";}

$result = $conn->query($sqlcalculatnumbererror);

if ($result->num_rows > 0){
    while ($row = $result -> fetch_assoc()){
        echo $row["numberError"];
    
    }
   
}else{
    echo "nodata";
}
?>