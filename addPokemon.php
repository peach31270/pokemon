<?php
require_once("database-connection.php");
session_start();
if (!isset($_SESSION['IdUtilisateur'])) {
    header("Location: pageDeConnexion.php");
}
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $pokemon_id = $_POST['pokemon_id'];
    $dateCapture = $_POST['dateCapture'];
    $IdUtilisateur = $_SESSION['IdUtilisateur'];
    $connection->query("INSERT INTO PokemonUtilisateur (IdUtilisateur, Id_Pokemon, dateCapture) VALUES ('$IdUtilisateur', '$pokemon_id', '$dateCapture')");
    echo "Pokémon ajouté avec succès à votre équipe.";
}
?>
<!-- Formulaire pour ajouter un pokémon à l'équipe -->
<form action="addPokemon.php" method="POST">
    <input type="number" name="pokemon_id" placeholder="ID du Pokémon" required>
    <input type="date" name="dateCapture" placeholder="Date de capture" required>
    <button type="submit">Ajouter le Pokémon</button>
</form>