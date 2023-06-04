<?php

function connect(): PDO
{

    $host = "localhost";
    $dbname = "catdopt";

    $dsn = "mysql:host=$host;dbname=$dbname";
    $username = "root";
    $password = "";

    return new PDO($dsn, $username, $password);
}
