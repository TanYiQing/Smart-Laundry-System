<?php
include_once("dbconnect.php");

$datestart=$_POST['datestart'];
$dateend=$_POST['dateend'];
$laundryID=$_POST['laundryID'];

    $sqlGenerateErrorReport="SELECT * FROM error_Reported WHERE errorCreated BETWEEN '$datestart' AND '$dateend' AND laundryID='$laundryID'";

$result = $conn->query($sqlGenerateErrorReport);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $errorReport = array();
        $errorReport[error_ID] = $row['error_ID'];
        $errorReport[name] = $row['name'];
        $errorReport[phone] = $row['phone'];
        $errorReport[email] = $row['email'];
        $errorReport[laundryID] = $row['laundryID'];
        $errorReport[machineID] = $row['machineID'];
        $errorReport[machineType] = $row['machineType'];
        $errorReport[error] = $row['error'];
        $errorReport[errorCreated] = $row['errorCreated'];
        array_push($response,$errorReport);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>