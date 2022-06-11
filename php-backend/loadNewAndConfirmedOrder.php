<?php
include_once("dbconnect.php");

$email=$_POST['email'];


    $sqlloadconfirmedorder="SELECT * FROM customer_order WHERE status='Order Confirmed' OR status='Order Placed'";


$result = $conn->query($sqlloadconfirmedorder);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $ongoingorderlist = array();
        $ongoingorderlist[orderID] = $row['orderID'];
        $ongoingorderlist[receiptID] = $row['receiptID'];
        $ongoingorderlist[email] = $row['email'];
        $ongoingorderlist[name] = $row['name'];
        $ongoingorderlist[phone] = $row['phone'];
        $ongoingorderlist[ordermethod] = $row['ordermethod'];
        $ongoingorderlist[addressID] = $row['addressID'];
        $ongoingorderlist[collecttime] = $row['collecttime'];
        $ongoingorderlist[notetolaundry] = $row['notetolaundry'];
        $ongoingorderlist[laundryID] = $row['laundryID'];
        $ongoingorderlist[machineID] = $row['machineID'];
        $ongoingorderlist[machineType] = $row['machineType'];
        $ongoingorderlist[price] = $row['price'];
        $ongoingorderlist[addon1] = $row['addon1'];
        $ongoingorderlist[addon2] = $row['addon2'];
        $ongoingorderlist[addon3] = $row['addon3'];
        $ongoingorderlist[totalPrice] = $row['totalPrice'];
        $ongoingorderlist[status] = $row['status'];
        $ongoingorderlist[orderCreated] = $row['orderCreated'];
        array_push($response,$ongoingorderlist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>