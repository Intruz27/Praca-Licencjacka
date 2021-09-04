<?php

$host = 'localhost';
$user = 'u676824251_JaroslawGrzeda';
$password = 'bachelorsDegree2021';
$dbname = 'u676824251_wypozyczalnia';

$mysqli = new mysqli($host,$user,$password,$dbname);
$mysqli->query("SET NAMES 'utf8' COLLATE 'utf8_polish_ci'");
$mysqli->query("SET CHARSET utf8");

if($error = $mysqli->connect_errno)
{
    die("Wystąpił błąd połączenia numer ".$error);
}
?>