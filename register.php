<?php
include 'db.php';
session_start();

$username = $_POST['username'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
$email = $_POST['email'];

$sql = "INSERT INTO Users (Username, Password, Email) VALUES ('$username', '$password', '$email')";

if ($conn->query($sql) === TRUE) {
    // Set session variables upon successful registration
    $_SESSION['user'] = $username;
    header("Location: login.html"); // Redirect to login page
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
