<!-- 
    Ce fichier représente la page de liste par type de pokémon du site.
-->
<?php
require_once("head.php");
require_once("database-connection.php");

// Récupérer tous les types de Pokémon uniques
$queryTypes = $databaseConnection->query("SELECT DISTINCT libelleType FROM typepokemon ORDER BY libelleType");

if (!$queryTypes) {
    echo "Erreur SQL : " . $databaseConnection->error;
} else {
    while ($type = $queryTypes->fetch_assoc()) {
        echo '<h2>' . $type['libelleType'] . '</h2>';
        echo '<table>';

        // Récupérer et afficher les Pokémon de ce type
        $queryPokemon = $databaseConnection->query("SELECT pokemon.IdPokemon, pokemon.NomPokemon, pokemon.urlPhoto, typepokemon.libelleType AS 'Type 1', typepokemon2.libelleType AS 'Type 2' FROM pokemon INNER JOIN typepokemon ON pokemon.IdTypePokemon = typepokemon.IdType LEFT JOIN typepokemon as typepokemon2 ON pokemon.idSecondTypePokemon = typepokemon2.IdType WHERE typepokemon.libelleType = '" . $type['libelleType'] . "' ORDER BY pokemon.NomPokemon");

        if (!$queryPokemon) {
            echo "Erreur SQL : " . $databaseConnection->error;
        } else {
            while ($pokemon = $queryPokemon->fetch_assoc()) {
                echo '<tr>';
                echo '<td>' . $pokemon['IdPokemon'] . '</td>';
                echo '<td><a href="pokemon_details.php?id=' . $pokemon['IdPokemon'] . '"><img src="' . $pokemon['urlPhoto'] . '" alt="' . $pokemon['NomPokemon'] . '"></a></td>';
                echo '<td><a href="pokemon_details.php?id=' . $pokemon['IdPokemon'] . '">' . $pokemon['NomPokemon'] . '</a></td>';
                echo '<td>' . $pokemon['Type 1'] . '</td>';
                echo '<td>' . $pokemon['Type 2'] . '</td>';
                echo '</tr>';
            }
        }

        echo '</table>';
    }
}

require_once("footer.php");
?>