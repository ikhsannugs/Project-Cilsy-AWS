<?php

$db_host = "database-1.citrm16v9p2y.ap-southeast-1.rds.amazonaws.com";
$db_user = "admin";
$db_pass = "admin123";
$db_name = "pesbukdatabase";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
