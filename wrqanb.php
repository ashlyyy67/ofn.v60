<?php

// Create connection
$conn = new mysqli("localhost", "root", "", "workshop");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$id = $_POST['id'];
$name = $_POST['name'];
$qualification = $_POST['qualification'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$workshop = $_POST['workshop'];
$date = $_POST['date'];

$sql = "INSERT INTO workshopt (id, name, qualification,  email, phone, workshop, date)
VALUES('$id', '$name', '$qualification', '$email', '$phone', '$workshop', '$date')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
