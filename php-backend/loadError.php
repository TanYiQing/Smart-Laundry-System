<?php
include_once("dbconnect.php");

$laundryID=$_POST['laundryID'];

    $sqlloaderrormachine="SELECT * FROM error_Reported WHERE laundryID='$laundryID'";

$result = $conn->query($sqlloaderrormachine);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $errormachinelist = array();
        $errormachinelist[error_ID] = $row['error_ID'];
        $errormachinelist[name] = $row['name'];
        $errormachinelist[phone] = $row['phone'];
        $errormachinelist[email] = $row['email'];
        $errormachinelist[laundryID] = $row['laundryID'];
        $errormachinelist[machineID] = $row['machineID'];
        $errormachinelist[machineType] = $row['machineType'];
        $errormachinelist[error] = $row['error'];
        $errormachinelist[errorCreated] = $row['errorCreated'];
        array_push($response,$errormachinelist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>