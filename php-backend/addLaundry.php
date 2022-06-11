<?php
include_once("dbconnect.php");
$laundryOwnerName=$_POST['laundryOwnerName'];
$laundryOwnerContact=$_POST['laundryOwnerContact'];
$laundryName=$_POST['laundryName'];
$laundryAddress1=$_POST['laundryAddress1'];
$laundryAddress2=$_POST['laundryAddress2'];
$laundryZIP=$_POST['laundryZIP'];
$laundryCity=$_POST['laundryCity'];
$laundryState=$_POST['laundryState'];
$email=$_POST['email'];
$encoded_laundryshopimage=$_POST['encoded_laundryshopimage'];
$encoded_ssmimage=$_POST['encoded_ssmimage'];
$encoded_businesslicenseimage=$_POST['encoded_businesslicenseimage'];
$encoded_bankheaderimage=$_POST['encoded_bankheaderimage'];

$sqladdlaundry="INSERT INTO laundry(laundryOwnerName,laundryOwnerContact,laundryName,laundryAddress1,laundryAddress2,laundryZIP,laundryCity,laundryState,email,approve) VALUES('$laundryOwnerName','$laundryOwnerContact','$laundryName','$laundryAddress1','$laundryAddress2','$laundryZIP','$laundryCity','$laundryState','$email','0')";
if($conn->query($sqladdlaundry)===true){
    $decoded_laundryshopimage=base64_decode($encoded_laundryshopimage);
    $decoded_ssmimage=base64_decode($encoded_ssmimage);
    $decoded_businesslicenseimage=base64_decode($encoded_businesslicenseimage);
    $decoded_bankheaderimage=base64_decode($encoded_bankheaderimage);
    
    $foldername=mysqli_insert_id($conn);
    $directoryname=mkdir('../images/laundry/'.$foldername);
    
    $is_written_laundryshopimage=file_put_contents('../images/laundry/'.$foldername.'/laundryshopimage.png',$decoded_laundryshopimage);
    $is_written_ssmimage=file_put_contents('../images/laundry/'.$foldername.'/ssmimage.png',$decoded_ssmimage);
    $is_written_businesslicenseimage=file_put_contents('../images/laundry/'.$foldername.'/businesslicenseimage.png',$decoded_businesslicenseimage);
    $is_written_bankheaderimage=file_put_contents('../images/laundry/'.$foldername.'/bankheaderimage.png',$decoded_bankheaderimage);
    
    echo "Success";
}else{
    echo "Failed";
}
?>