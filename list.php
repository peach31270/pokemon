<!-- 
    Ce fichier représente la page de liste de tous les pokémons.
-->
<?php
require_once("head.php");
require_once("database-connection.php");

$query = $databaseConnection->query("SELECT pokemon.IdPokemon, pokemon.NomPokemon, pokemon.urlPhoto, typepokemon.libelleType FROM pokemon INNER JOIN typepokemon ON pokemon.IdTypePokemon = typepokemon.IdType ORDER BY pokemon.IdPokemon");

if (!$query) {
    echo "Erreur SQL : " . $databaseConnection->error;
} else {
    echo '<table>';
    while ($data = $query->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $data['IdPokemon'] . '</td>';
        echo '<td><img src="' . $data['urlPhoto'] . '" alt="' . $data['NomPokemon'] . '"></td>';
        echo '<td>' . $data['NomPokemon'] . '</td>';
        echo '<td>' . $data['libelleType'] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
}

require_once("footer.php");
?>