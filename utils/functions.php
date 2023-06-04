<?php

function alert(bool $success, string $message): string
{
    return "<div class='alert alert-" . ($success ? 'success' : 'danger') . "'>"
        . $message
        . "</div>";
}

function response(bool $success, string $code = null, string $message = null, array $params = []): array
{
    return [
        "success" => $success,
        "error" => [
            "code" => $code,
            "message" => $message
        ],
        "data" => $params
    ];
}
