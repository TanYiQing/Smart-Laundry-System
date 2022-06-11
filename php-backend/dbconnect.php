<?php
$servername = "localhost";
$username   = "hubbuddi_onesourceadmin";
$password   = "^X?Ato~l+bj#";
$dbname     = "hubbuddi_onesourcedb";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>