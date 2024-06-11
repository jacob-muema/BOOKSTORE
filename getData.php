<?php
$servername = "localhost";
$username = "root"; // Default XAMPP username
$password = ""; // Default XAMPP password
$dbname = "Bookstore";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$queryId = $_GET['queryId'];
$result = "";

switch ($queryId) {
    case 'most_expensive':
        $sql = "SELECT Book_Name, Price FROM Books ORDER BY Price DESC LIMIT 1";
        $result = generateTable($conn->query($sql));
        break;
    case 'most_popular':
        $sql = "SELECT City, Book_Name, MAX(Sales) AS Max_Sales FROM Books GROUP BY City, Book_Name ORDER BY City, Max_Sales DESC";
        $result = generateTable($conn->query($sql));
        break;
    case 'most_bought':
        $sql = "SELECT Book_Name, SUM(Sales) AS Total_Sales FROM Books GROUP BY Book_Name ORDER BY Total_Sales DESC LIMIT 1";
        $result = generateTable($conn->query($sql));
        break;
    case 'least_preferred':
        $sql = "SELECT Book_Name, SUM(Sales) AS Total_Sales FROM Books GROUP BY Book_Name ORDER BY Total_Sales ASC LIMIT 1";
        $result = generateTable($conn->query($sql));
        break;
    default:
        $result = "<p>Error: Invalid queryId</p>";
}

$conn->close();
echo $result;

function generateTable($queryResult) {
    if ($queryResult->num_rows > 0) {
        $result = "<table border='1'>
                    <tr>
                        <th>Book Name</th>
                        <th>Details</th>
                    </tr>";
        while ($row = $queryResult->fetch_assoc()) {
            $details = "";
            foreach ($row as $key => $value) {
                $details .= "<b>$key:</b> $value<br>";
            }
            $result .= "<tr>
                            <td>{$row['Book_Name']}</td>
                            <td>$details</td>
                        </tr>";
        }
        $result .= "</table>";
    } else {
        $result = "<p>No results found</p>";
    }
    return $result;
}

?>
