 <?php
$city = $_POST["city"];
$conn = new mysqli("localhost", "root", "", "gre");
$query = "SELECT Student.S_Name, Student.S_Aadhar_No, IVY_League.College_Name
FROM Student
INNER JOIN IVY_League ON Student.College_Code = IVY_League.College_Code
INNER JOIN Metropolitan_City ON Student.MPin_Code = Metropolitan_City.Pin_Code
WHERE Student.App_Status = 'Accepted' AND Metropolitan_City.City_Name = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("s", $city);
$stmt->execute();
$result = $stmt->get_result();
if ($result->num_rows > 0) {
    echo "<table><tr><th>S_Name</th><th>S_Aadhar_no</th><th>College_name</th></tr>";
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row['S_Name']."</td><td>".$row['S_Aadhar_No']."</td><td>".$row['College_Name']."</td></tr>";
    }
    echo "</table>";
} else {
    echo "No results found.";
}
?>
