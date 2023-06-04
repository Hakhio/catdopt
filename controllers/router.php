<?php

// uri[0] : route 
// uri[1] : action

$route = '';
$action = '';

// Définir les routes
$routes = [
    '' => [
        'path' => 'home',
        'component' => 'controllers/HomeController.php'
    ],

    'home' => [
        'path' => 'home',
        'component' => 'controllers/HomeController.php'
    ],

    'cat' => [
        'path' => 'cat',
        'action' => [
            'read' => [
                'path' => '',
                'component' => 'controllers/CatController/read.php'
            ],
            'create' => [
                'path' => '',
                'component' => 'controllers/CatController/read.php'
            ],
        ]
    ]
];

if (isset($_GET['section'])) {

    $route = $_GET['section'];

    // Vérifier si l'URL correspond à une route valide
    if (array_key_exists($route, $routes)) {

        if (isset($_GET['action'])) {
            $action = $_GET['action'];
            if (array_key_exists($action, $routes[$route]['action'])) {
                include $routes[$route]['action'][$action]['component'];
            } else {
                echo alert(false, "L'action n'existe pas ! ($action)");
            }
        } else {
            include $routes[$route]['component'];
        }
    } else {
        echo alert(false, "Page inconnue ! ($route)");
        include "views/partials/404.php";
    }
}
