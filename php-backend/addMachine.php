<?php
include_once("dbconnect.php");
$machineType=$_POST['machineType'];
$calculationBase=$_POST['calculationBase'];
$minimumWeight=$_POST['minimumWeight'];
$maximumWeight=$_POST['maximumWeight'];
$price=$_POST['price'];
$duration=$_POST['duration'];
$laundryID=$_POST['laundryID'];
$addOn1=$_POST['addOn1'];
$addOn1Price=$_POST['addOn1Price'];
$addOn2=$_POST['addOn2'];
$addOn2Price=$_POST['addOn2Price'];
$addOn3=$_POST['addOn3'];
$addOn3Price=$_POST['addOn3Price'];

$sqladdmachine="INSERT INTO machine(machineType,calculationBase,minimumWeight,maximumWeight,price,duration,laundryID,available,addOn1,addOn1Price,addOn2,addOn2Price,addOn3,addOn3Price) VALUES('$machineType','$calculationBase','$minimumWeight','$maximumWeight','$price','$duration','$laundryID','Available','$addOn1','$addOn1Price','$addOn2','$addOn2Price','$addOn3','$addOn3Price')";
if($conn->query($sqladdmachine)===true){
    echo "Success";
}else{
    echo "Failed";
}
?>