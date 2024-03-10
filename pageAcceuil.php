<?php
require_once("connection.php");
session_start();
if (!isset($_SESSION['IdUtilisateur'])) {
    header("Location: login.php");
}
echo "Bonjour " . $_SESSION['prenom'] . " " . $_SESSION['nom'];
?>
<!-- Lien pour ajouter un pokémon à l'équipe -->
<a href="add_pokemon.php">Ajouter un pokémon à mon équipe</a>