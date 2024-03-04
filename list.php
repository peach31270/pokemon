<!-- 
    Ce fichier représente la page de liste de tous les pokémons.
-->
<?php
require_once("head.php");
require_once("database-connection.php");

$query = $databaseConnection->query("SELECT pokemon.IdPokemon, pokemon.NomPokemon, pokemon.urlPhoto, typepokemon.libelleType, typepokemon2.libelleType AS 'Type 2' FROM pokemon LEFT JOIN typepokemon ON pokemon.IdTypePokemon = typepokemon.IdType LEFT JOIN typepokemon as typepokemon2 ON pokemon.idSecondTypePokemon = typepokemon2.IdType ORDER BY pokemon.IdPokemon");

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
        echo '<td>' . $data['Type 2'] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
}

require_once("footer.php");
?>


<!-- 
// require_once("head.php");
// require_once("database-connection.php");
// $query = $databaseConnection ->query("SELECT 1");
// $result =$query->fetch_all(MYSQLI_ASSOC);
// var_dump($result);
// ?>

// // 
// require_once("footer.php");
// ?>



