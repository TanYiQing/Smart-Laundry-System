<?php
include_once("dbconnect.php");

$laundryID=$_POST['laundryID'];

    $sqlmachineAvailabilityAll = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND available = 'Not Available'";
    $sqlmachineTotalAll = "SELECT * FROM machine WHERE laundryID = '$laundryID'";
    $sqlmachineAvailableWashingMachine = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND available = 'Not Available' AND machineType = 'Washing Machine'";
    $sqlmachineTotalWashingMachine = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND machineType = 'Washing Machine'";
    $sqlmachineAvailableDryWashingMachine = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND available = 'Not Available' AND machineType = 'Dry Washing Machine'";
    $sqlmachineTotalDryWashingMachine = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND machineType = 'Dry Washing Machine'";
    $sqlmachineAvailableIroningMachine = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND available = 'Not Available' AND machineType = 'Ironing Machine'";
    $sqlmachineTotalIroningMachine = "SELECT * FROM machine WHERE laundryID = '$laundryID' AND machineType = 'Ironing Machine'";
        
$result1 = $conn->query($sqlmachineAvailabilityAll);
$result2 = $conn->query($sqlmachineTotalAll);
$result3 = $conn->query($sqlmachineAvailableWashingMachine);
$result4 = $conn->query($sqlmachineTotalWashingMachine);
$result5 = $conn->query($sqlmachineAvailableDryWashingMachine);
$result6 = $conn->query($sqlmachineTotalDryWashingMachine);
$result7 = $conn->query($sqlmachineAvailableIroningMachine);
$result8 = $conn->query($sqlmachineTotalIroningMachine);

if ($result1->num_rows > 0||$result2->num_rows > 0||$result3->num_rows > 0||$result4->num_rows > 0 ||$result5->num_rows > 0||$result6->num_rows > 0||$result7->num_rows > 0||$result8->num_rows > 0){
    $count1=$result1->num_rows;
    $count2=$result2->num_rows;
    $percentageAll=($count1/$count2)*100;
    $count3=$result3->num_rows;
    $count4=$result4->num_rows;
    $percentageWashingMachine=($count3/$count4)*100;
    $count5=$result5->num_rows;
    $count6=$result6->num_rows;
    $percentageDryWashingMachine=($count5/$count6)*100;
    $count7=$result7->num_rows;
    $count8=$result8->num_rows;
    $percentageIroningMachine=($count7/$count8)*100;
    
    $machineType = array("All","Washing Machine","Dry Washing Machine","Ironing Machine");
    $percentage = array(round($percentageAll,0),round($percentageWashingMachine,0),round($percentageDryWashingMachine,0),round($percentageIroningMachine,0));
    
    
    $response = array();
    
    for($i = 0; $i < count($machineType); $i++){
    $response[] = array(
            'machineType' => $machineType[$i],
            'percentage' => $percentage[$i]."",
        );
    }
    echo json_encode($response);
}

else{
    echo "Failed";
}

?>