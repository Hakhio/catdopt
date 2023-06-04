<?php

$cats_cards = "";

require_once "models/cat.php";

$response = get();

// var_dump($response);

foreach ($response['data'] as $cat) {
    list(
        $id,
        $numero,
        $nom,
        $sexe,
        $date_naissance,
        $sterilise,
        $remarque,
        $race,
        $couleur,
        $pelage,
        $patron,
    ) = $cat;

    $date = new DateTimeImmutable($date_naissance);



    $cats_cards .= "<div class='card'>";
    $cats_cards .= "<div class='card-info'>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Nom :</span>";
    $cats_cards .= "<span class='card-info-value'>$nom</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Sexe :</span>";
    $cats_cards .= "<span class='card-info-value'>" . ($sexe == "M" ? "Mâle" : ($sexe == "F" ? "Femelle" : "Inconnu")) . "</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Date de naissance: </span>";
    $cats_cards .= "<span class='card-info-value'>" . $date->format('d/m/Y') . "</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Stérilisé :</span>";
    $cats_cards .= "<span class='card-info-value'>" . ($sterilise ? "Oui" : "Non") . "</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Race :</span>";
    $cats_cards .= "<span class='card-info-value'>$race</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Couleur :</span>";
    $cats_cards .= "<span class='card-info-value'>$couleur</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Pelage :</span>";
    $cats_cards .= "<span class='card-info-value'>$pelage</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Patron :</span>";
    $cats_cards .= "<span class='card-info-value'>$patron</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-info-item'>";
    $cats_cards .= "<span class='card-info-label'>Remarque :</span>";
    $cats_cards .= "<span class='card-info-value'>$remarque</span>";
    $cats_cards .= "</div>";
    $cats_cards .= "</div>";
    $cats_cards .= "<div class='card-btn-wrapper'>";
    $cats_cards .= "<button class='card-btn'><a href=''>Adopter !</a></button>";
    $cats_cards .= "</div>";
    $cats_cards .= "</div>";
}




require_once "views/cat/read.php";
