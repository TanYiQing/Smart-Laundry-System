<?php
include_once("dbconnect.php");

$laundryName=$_POST['laundryName'];

if (isset($laundryName)){
   $sqlloadlaundry= "SELECT * FROM laundry WHERE laundryName OR laundryCity LIKE  '%$laundryName%'";
}


$result = $conn->query($sqlloadlaundry);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $laundrylist = array();
        $laundrylist[laundryID] = $row['laundryID'];
        $laundrylist[laundryOwnerName] = $row['laundryOwnerName'];
        $laundrylist[laundryOwnerContact] = $row['laundryOwnerContact'];
        $laundrylist[laundryName] = $row['laundryName'];
        $laundrylist[laundryAddress1] = $row['laundryAddress1'];
        $laundrylist[laundryAddress2] = $row['laundryAddress2'];
        $laundrylist[laundryZIP] = $row['laundryZIP'];
        $laundrylist[laundryCity] = $row['laundryCity'];
        $laundrylist[laundryState] = $row['laundryState'];
        $laundrylist[dateLaunch] = $row['dateLaunch'];
        $laundrylist[email] = $row['email'];
        $laundrylist[approve] = $row['approve'];
        $laundrylist[favourite] = $favourite;
        array_push($response,$laundrylist);
    }
    echo json_encode($response);
    
}else{
    echo "nodata";
}
?>