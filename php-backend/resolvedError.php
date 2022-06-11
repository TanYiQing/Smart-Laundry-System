<?php
include_once("dbconnect.php");

$errorID=$_POST['errorID'];
$sqlresolvederror="DELETE FROM error_Reported WHERE error_ID = '$errorID'";
  
if ($conn->query($sqlresolvederror) === TRUE){
       echo "Success";
    }else {
        echo "Failed";
    }

?>