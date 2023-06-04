<?php

$uri = '';

if ($_SERVER['HTTP_HOST'] == 'localhost') {
    $array_uri = explode('/', $_SERVER['REQUEST_URI']);
    array_shift($array_uri);
    $uri = $array_uri;
} else {
    $uri = explode('/', $_SERVER['REQUEST_URI']);
}

if ($uri[0] == 'catdopt') {
    array_shift($uri);
}

// uri[0] : route 
// uri[1] : action

// Définir les routes
$routes = [
    '' => 'home',
    'home' => 'home'
];

// Vérifier si l'URL correspond à une route valide
if (array_key_exists($uri[0], $routes)) {

    // 'home' => HomeController
    $controllerName = ucfirst($routes[$uri[0]]) . 'Controller';
    $controllerFile = "controllers/$controllerName.php";

    if (file_exists($controllerFile)) {
        require_once $controllerFile;
    } else {
        echo "<p>Erreur: Page non trouvée</p>";
    }
} else {
    echo "<p>Erreur: Route non trouvée</p>";
}
