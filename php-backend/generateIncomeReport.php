<?php
include_once("dbconnect.php");

$datestart=$_POST['datestart'];
$dateend=$_POST['dateend'];
$laundryID=$_POST['laundryID'];

    $sqlGenerateIncomeReport="SELECT * FROM customer_order WHERE orderCreated BETWEEN '$datestart' AND '$dateend' AND laundryID='$laundryID'";

$result = $conn->query($sqlGenerateIncomeReport);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $incomereport = array();
        $incomereport[orderID] = $row['orderID'];
        $incomereport[receiptID] = $row['receiptID'];
        $incomereport[email] = $row['email'];
        $incomereport[name] = $row['name'];
        $incomereport[phone] = $row['phone'];
        $incomereport[ordermethod] = $row['ordermethod'];
        $incomereport[addressID] = $row['addressID'];
        $incomereport[collecttime] = $row['collecttime'];
        $incomereport[notetolaundry] = $row['notetolaundry'];
        $incomereport[laundryID] = $row['laundryID'];
        $incomereport[machineID] = $row['machineID'];
        $incomereport[machineType] = $row['machineType'];
        $incomereport[price] = $row['price'];
        $incomereport[addon1] = $row['addon1'];
        $incomereport[addon2] = $row['addon2'];
        $incomereport[addon3] = $row['addon3'];
        $incomereport[totalPrice] = $row['totalPrice'];
        $incomereport[status] = $row['status'];
        $incomereport[orderCreated] = $row['orderCreated'];
        array_push($response,$incomereport);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>