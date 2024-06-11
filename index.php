<?php
session_start();

// Check if the user is logged in
if (isset($_SESSION['user'])) {
    // If logged in, redirect to the main page of the bookstore
    header("Location: login.html"); // Change to the actual main page filename
    exit;
} else {
    // If not logged in, redirect to the login page
    header("Location: login.html");
    exit;
}
?>
