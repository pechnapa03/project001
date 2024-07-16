<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");


// กำหนดค่าต่าง ๆ สำหรับการเชื่อมต่อ MySQL Database
$servername = "localhost"; // เช่น localhost หรือ IP ของ MySQL Server
$username = "root"; // ชื่อผู้ใช้ของ MySQL
$password = ""; // รหัสผ่านของ MySQL
$dbname = "tutoring_app"; // ชื่อของฐานข้อมูลที่ใช้งาน

// สร้างการเชื่อมต่อ
$conn = new mysqli($servername, $username, $password, $dbname);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// รับข้อมูลจากแอปพลิเคชัน Flutter
$data = json_decode(file_get_contents('php://input'), true);

$name = $data['name'];
$email = $data['email'];
$password = $data['password'];
$role = $data['role']; // เพิ่มตัวแปร role เพื่อแยกว่าเป็นนักเรียนหรือติวเตอร์

// เพิ่มข้อมูลลงในฐานข้อมูล
$sql = "INSERT INTO users (name, email, password, role) VALUES ('$name', '$email', '$password', '$role')";

$response = array();

if ($conn->query($sql) === TRUE) {
  $response['success'] = true;
  $response['message'] = "User registered successfully";
} else {
  $response['success'] = false;
  $response['message'] = "Error: " . $sql . "<br>" . $conn->error;
}

// ปิดการเชื่อมต่อ
$conn->close();

// ส่งผลลัพธ์กลับไปยังแอปพลิเคชัน Flutter
echo json_encode($response);
?>
