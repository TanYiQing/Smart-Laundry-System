<?php
include_once("dbconnect.php");

$email=$_POST['email'];

if (isset($email)){
    $sqlloadaddress="SELECT * FROM customer_address WHERE email = '$email'";
}

$result = $conn->query($sqlloadaddress);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $addresslist = array();
        $addresslist[addressID] = $row['addressID'];
        $addresslist[name] = $row['name'];
        $addresslist[contact] = $row['contact'];
        $addresslist[address1] = $row['address1'];
        $addresslist[address2] = $row['address2'];
        $addresslist[zip] = $row['zip'];
        $addresslist[city] = $row['city'];
        $addresslist[state] = $row['state'];
        $addresslist[addressType] = $row['addressType'];
        $addresslist[email] = $row['email'];
        array_push($response,$addresslist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>