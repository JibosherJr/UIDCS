<?php
// Connect to the database (replace these with your database credentials)
$conn = mysqli_connect("localhost", "root", "", "websitelogin");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve JSON data from the request body
$data = json_decode(file_get_contents("php://input"));

if ($data) {
    $action = $data->action;
    $courseName = $data->className;
    $classId = 

    if ($action === 'add') {
        // Fetch class details from the studentcourses table
        $fetchSql = "SELECT * FROM studentcourses WHERE ,courseid = '$data->courseid', coursename = '$coursename', coursetime = '$data->coursetime', courseday = '$data->courseday'";
        $result = $conn->query($fetchSql);

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();

            // Insert class details into the studentschedule table
            $insertSql = "INSERT INTO studentschedule (courseid, coursename, coursetime, courseday) 
                          VALUES ('{$row['courseid']}', '{$row['coursename']}', '{$row['coursetime']}', '{$row['courseday']}')";

            if ($conn->query($insertSql) === TRUE) {
                echo json_encode(['success' => true, 'message' => 'Class added to schedule']);
            } else {
                echo json_encode(['success' => false, 'message' => 'Error adding class to schedule']);
            }
        } else {
            echo json_encode(['success' => false, 'message' => 'Class not found in studentcourses']);
        }
    } elseif ($action === 'drop') {
        // Perform the database delete operation for dropping a class
        $deleteSql = "DELETE FROM studentschedule WHERE coursename = '$className'";
        if ($conn->query($deleteSql) === TRUE) {
            echo json_encode(['success' => true, 'message' => 'Class dropped from schedule']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Error dropping class from schedule']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Invalid action']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid data']);
}

// Close the database connection
$conn->close();
?>
