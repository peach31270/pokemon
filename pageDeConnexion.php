<?php
require_once("database-connection.php");
session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $login = $_POST['login'];
    $password = $_POST['password'];
    $user = $databaseConnection->query("SELECT * FROM Utilisateur WHERE login = '$login'")->fetch_assoc();
    if ($user && password_verify($password, $user['hashMotDePasse'])) {
        $_SESSION['IdUtilisateur'] = $user['IdUtilisateur'];
        $_SESSION['nom'] = $user['nom'];
        $_SESSION['prenom'] = $user['prenom'];
        header("Location: index.php");
    } else {
        echo "Erreur : Login ou mot de passe incorrect.";
    }
}
?>
<!-- Formulaire de connexion -->
<form action="pageDeConnexion.php" method="POST">
    <input type="text" name="login" placeholder="Login" required>
    <input type="password" name="password" placeholder="Mot de passe" required>
    <button type="submit">Se connecter</button>
</form>
<p>Vous n'avez pas de compte ? <a href="pageDinscription.php">Inscrivez-vous ici</a>.</p>