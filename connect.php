<?php
    $serverName = "localhost:3307";
    $username = "root";
    $password = "";
    $dbName = "stern";

    $dbc = mysqli_connect($serverName, $username, $password, $dbName) or die("Error connectiong to database.".mysqli_error());
?>