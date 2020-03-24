<?php

$servername = "localhost"; //nombre del servidor
$username = "root"; // usuario - por defecto el usuario del servidor local es root
$password = ""; // contraseña - el servidor local por defecto no tiene contraseña
$dbname= "tp2lab4php"; // Nombre de la base de datos a la que nos conectamos

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname); // genera la conexion con mysql
mysqli_set_charset($conn, 'utf8');
?>
