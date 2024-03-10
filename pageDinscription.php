<?php
require_once("connection.php");
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $login = $_POST['login'];
    $password = $_POST['password'];
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    $connection->query("INSERT INTO Utilisateur (nom, prenom, login, hashMotDePasse) VALUES ('$nom', '$prenom', '$login', '$hashedPassword')");
    header("Location: login.php");
}
?>
<!-- Formulaire d'inscription -->
<form action="register.php" method="POST">
    <input type="text" name="nom" placeholder="Nom" required>
    <input type="text" name="prenom" placeholder="Prénom" required>
    <input type="text" name="login" placeholder="Login" required>
    <input type="password" name="password" placeholder="Mot de passe" required>
    <button type="submit">S'inscrire</button>
</form>