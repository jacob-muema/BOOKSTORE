<?php
include 'db.php';
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM Users WHERE Username='$username'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    if (password_verify($password, $row['Password'])) {
        // Set session variables upon successful login
        $_SESSION['user'] = $username;
        echo "Login successful";
        // Redirect to the main page of the bookstore
        header("Location: index.html");
    } 
    else {
        $_SESSION['error'] = "Invalid username or password";
        header("Location: register.html");
    }
} else {
    $_SESSION['error'] = "Invalid username or password";
    header("Location: register.html");
}

$conn->close();
?>