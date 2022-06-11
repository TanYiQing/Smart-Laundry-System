<?php
include_once("dbconnect.php");

$laundryID=$_POST['laundryID'];
$machineType=$_POST['machineType'];

if (isset($machineType)){
    if($machineType=="All"){
        $sqlloadmachine="SELECT * FROM machine WHERE laundryID = '$laundryID'";
    }else if($machineType=="Washing Machine"){
        $sqlloadmachine="SELECT m.* FROM machine m WHERE m.laundryID = '$laundryID' AND m.machineType='$machineType'";
    }else if($machineType=="Dry Washing Machine"){
        $sqlloadmachine="SELECT m.* FROM machine m WHERE m.laundryID = '$laundryID' AND m.machineType='$machineType'";
    }else{
        $sqlloadmachine="SELECT m.* FROM machine m WHERE m.laundryID = '$laundryID' AND m.machineType='$machineType'";
    }
   
}

$result = $conn->query($sqlloadmachine);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $machinelist = array();
        $machinelist[machineID] = $row['machineID'];
        $machinelist[machineType] = $row['machineType'];
        $machinelist[calculationBase] = $row['calculationBase'];
        $machinelist[minimumWeight] = $row['minimumWeight'];
        $machinelist[maximumWeight] = $row['maximumWeight'];
        $machinelist[price] = $row['price'];
        $machinelist[duration] = $row['duration'];
        $machinelist[laundryID] = $row['laundryID'];
        $machinelist[available] = $row['available'];
        $machinelist[addOn1] = $row['addOn1'];
        $machinelist[addOn1Price] = $row['addOn1Price'];
        $machinelist[addOn2] = $row['addOn2'];
        $machinelist[addOn2Price] = $row['addOn2Price'];
        $machinelist[addOn3] = $row['addOn3'];
        $machinelist[addOn3Price] = $row['addOn3Price'];
        array_push($response,$machinelist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>