<?php
include "dbconnect.php"; 
$fname=$_POST['firstname'];
$lname=$_POST['lastname'];
// Inserting Row into a table
$sql = "INSERT INTO login(firstname,lastname) VALUES ('$fname','$lname')";
if (mysqli_query($conn, $sql)) {
//if ($conn->query($sql) === true) {
  echo "New record inserted successfully";
} else 
{
  echo "Error: " . $sql . "<br>" . $conn->error;
}




// close connection
$conn->close();


?>



