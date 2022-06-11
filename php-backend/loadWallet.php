<?php
include_once("dbconnect.php");

$email=$_POST['email'];

if (isset($email)){
    $sqlcalculatewallet = "SELECT a.orderID, a.receiptID, a.email, a.name, a.phone, a.ordermethod, a.addressID, a.collecttime, a.notetolaundry, a.machineID, a.machineType, a.price, a.addon1, a.addon2, a.addon3, a.totalPrice, a.status, b.laundryID, b.laundryName FROM customer_order a JOIN laundry b ON b.laundryID = a.laundryID WHERE a.email='$email' AND a.status='Order Completed' ORDER BY a.orderID ASC";}

$result = $conn->query($sqlcalculatewallet);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $walletlist = array();
        $walletlist[orderID] = $row['orderID'];
        $walletlist[receiptID] = $row['receiptID'];
        $walletlist[email] = $row['email'];
        $walletlist[name] = $row['name'];
        $walletlist[phone] = $row['phone'];
        $walletlist[ordermethod] = $row['ordermethod'];
        $walletlist[addressID] = $row['addressID'];
        $walletlist[collecttime] = $row['collecttime'];
        $walletlist[notetolaundry] = $row['notetolaundry'];
        $walletlist[machineID] = $row['machineID'];
        $walletlist[machineType] = $row['machineType'];
        $walletlist[price] = $row['price'];
        $walletlist[addon1] = $row['addon1'];
        $walletlist[addon2] = $row['addon2'];
        $walletlist[addon3] = $row['addon3'];
        $walletlist[totalPrice] = $row['totalPrice'];
        $walletlist[status] = $row['status'];
        $walletlist[laundryID] = $row['laundryID'];
        $walletlist[laundryName] = $row['laundryName'];
        array_push($response,$walletlist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>