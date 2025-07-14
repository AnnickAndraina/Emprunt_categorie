<?php
$host = '172.60.0.15';
$user = 'ETU004163';
$pass = 'ej5p5TbI';
$dbname = 'db_s2_ETU004163';

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
    die("Erreur de connexion : " . $conn->connect_error);
}
?>