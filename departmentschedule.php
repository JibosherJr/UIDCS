<?php
// Connect to the database (replace these with your database credentials)
$conn = mysqli_connect("localhost", "root", "", "websitelogin");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch courses from the database
$sql = "SELECT courseid, coursename, coursetime, courseday FROM studentcourses";
$result = $conn->query($sql);

// Output courses as a JSON object
$courses = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $courses[] = [
            'courseid' => $row['courseid'],
            'coursename' => $row['coursename'],
            'coursetime' => $row['coursetime'],
            'courseday' => $row['courseday'],
        ];
    }
}

// Close the database connection
$conn->close();

// Output JSON response
header('Content-Type: application/json');
echo json_encode($courses);
?>
