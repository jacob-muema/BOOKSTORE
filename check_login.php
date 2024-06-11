<?php
session_start();

if (isset($_SESSION['user'])) {
    $response = array("loggedIn" => true);
} else {
    $response = array("loggedIn" => false);
}

header('Content-Type: application/json');
echo json_encode($response);
?>
