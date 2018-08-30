<?php 

$full_name=$_POST['full_name'];
$email=$_POST['email'];
$contact=$_POST['contact'];
$age=$_POST['age'];
$profession=$_POST['profession'];
$event=$_POST['event'];
$dbservername = "localhost";
$dbusername = "root";
$dbpassword = "root";
$dbname="enroot";

// Create connection
$conn = mysqli_connect($dbservername, $dbusername, $dbpassword,$dbname);

$sql = "INSERT INTO `users` VALUES ('$full_name','$email','$contact','$age','$profession','$event')";

if ($conn->query($sql) === TRUE) {
    header("Location: thanks.html");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>