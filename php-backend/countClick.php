<?php
include_once("dbconnect.php");
$date=$_POST['date'];
$laundryID=$_POST['laundryID'];

    $sqlcountClick="INSERT INTO customer_report(date,laundryID) VALUES('$date','$laundryID')";

if ($conn->query($sqlcountClick) === TRUE){
    $sqladdClick="UPDATE customer_report SET pageViews = pageViews+1 WHERE date='$date' AND laundryID='$laundryID'";
    if ($conn->query($sqladdClick) === TRUE){
        
    }else{
        
    }
}else{
    $sqladdClick="UPDATE customer_report SET pageViews = pageViews+1 WHERE date='$date' AND laundryID='$laundryID'";
    if ($conn->query($sqladdClick) === TRUE){
        
    }else{
        
    }
}
?>