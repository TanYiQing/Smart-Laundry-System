<?php
include_once("dbconnect.php");

$role=$_POST['role'];
$email=$_POST['email'];

if (isset($role)){
    if($role=="Customer"){
        $sqlloadUser="SELECT * FROM users_customers WHERE email='$email'";
    }else{
        $sqlloadUser="SELECT * FROM users_laundryowner WHERE email='$email'";
    }
}

  
$result = $conn->query($sqlloadUser);

if ($result->num_rows > 0){
    $response = array();
    while ($row = $result -> fetch_assoc()){
        $user = array();
        $user[firstName] = $row['firstName'];
        $user[lastName] = $row['lastName'];
        $user[email] = $row['email'];
        $user[gender] = $row['gender'];
        $user[birthday] = $row['birthday'];
        $user[phone] = $row['phone'];
        array_push($response,$user);
    }
    echo json_encode($response);
    
}else{
    echo "nodata";
}
?>