<?php
session_start();
if (!isset($_SESSION['idUserLoggedIn'])) {
    header("Location: pageDeConnexion.php");
    exit;
}
?>