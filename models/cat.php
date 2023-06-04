<?php

require "models/database.php";

function get()
{
    try {
        $db = connect();

        $query = "
        SELECT 
            ch.id
            , numero
            , nom
            , sexe
            , date_naissance
            , sterilise
            , remarque
            , r.race
            , c.couleur
            , pe.pelage
            , pa.patron
        FROM chat ch
         JOIN race r
            ON ch.race = r.id
         JOIN couleur c
            ON ch.couleur = c.id
         JOIN pelage pe
            ON ch.pelage = pe.id
         JOIN patron pa
            ON ch.patron = pa.id";
        $stmt = $db->query($query);
        $cats = $stmt->fetchAll();
        return response(true, 200, "OK", $cats);
    } catch (PDOException $e) {
        echo alert(false, $e->getMessage());
    }
}
