<?php
include_once("dbconnect.php");

$datestart=$_POST['datestart'];
$dateend=$_POST['dateend'];
$laundryID=$_POST['laundryID'];

    $sqlGenerateCustomerReport="SELECT *, (SELECT COUNT(orderID) FROM customer_order WHERE orderCreated BETWEEN '$datestart' AND '$dateend' AND laundryID='$laundryID') AS orderNum FROM customer_report WHERE date BETWEEN '$datestart' AND '$dateend' AND laundryID='$laundryID'";
    // $sqlCalculateOrder="SELECT COUNT(orderID) AS orderNum FROM customer_order WHERE orderCreated BETWEEN '$datestart' AND '$dateend' AND laundryID='$laundryID'";

$result = $conn->query($sqlGenerateCustomerReport);
$result1 = $conn->query($sqlCalculateOrder);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $customerReport = array();
        $customerReport[date] = $row['date'];
        $customerReport[laundryID] = $row['laundryID'];
        $customerReport[pageViews] = $row['pageViews'];
        $customerReport[orderNum] = $row['orderNum'];
        $customerReport[transactionAmount] = $row['transactionAmount'];
        array_push($response,$customerReport);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>