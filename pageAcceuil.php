<?php
require_once("database-connection.php");
session_start();
if (!isset($_SESSION['IdUtilisateur'])) {
    header("Location: pageDeConnexion.php");
}
echo "Bonjour " . $_SESSION['prenom'] . " " . $_SESSION['nom'];
?>
<!-- Lien pour ajouter un pokémon à l'équipe -->
<a href="addPokemon.php">Ajouter un pokémon à mon équipe</a>