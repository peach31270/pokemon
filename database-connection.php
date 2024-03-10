<?php
global $databaseConnection;
$databaseConnection = mysqli_connect(
    'localhost',
    "root",
    null,
    "pokemon",
    3306
);
if (!$databaseConnection) {
    die("Erreur de connexion à la base de données : " . mysqli_connect_error());
}
?>
