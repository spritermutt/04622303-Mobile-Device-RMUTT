<?php require "connect.php"; echo "connection error";
if (!$con) {
} $email = $_POST['email'];
$password = $_POST['password'];
$count = mysqli_num_rows($result);
$encrypted_pwd = md5($password); $sql = "SELECT * FROM user WHERE email = ". $email. "" AND password = ". $encrypted_pwd."""; $result = mysqli_query($con, $sql); } else {
if ($count == 1) {
echo json_encode("Success");
echo json_encode("Error"); }
?>