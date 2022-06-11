<?php
include_once("dbconnect.php");

$email=$_POST['email'];

if (isset($email)){
    $sqlloadLaundryNearby="SELECT a.laundryID,a.laundryOwnerName,a.laundryOwnerContact,a.laundryName,a.laundryAddress1,a.laundryAddress2,a.laundryZIP,a.laundryCity,a.laundryState,a.dateLaunch,a.email,a.approve FROM laundry a LEFT JOIN customer_address b ON b.city = a.laundryCity  WHERE b.email = '$email' GROUP BY a.laundryID";
}

$result = $conn->query($sqlloadLaundryNearby);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $laundry_id = $row["laundryID"];
        $sqlloadfavourite = "SELECT * FROM favourite_laundry WHERE email = '$email' AND laundryID= '$laundry_id'";
        
        $result2 = $conn->query($sqlloadfavourite);
        
        if ($result2->num_rows == 1 ){
            $favourite = "favourite";
        }else{
            $favourite = "unfavourite";
        }
        
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