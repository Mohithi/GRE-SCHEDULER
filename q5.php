<?php
$db_host = "localhost"; // Hostname
$db_user = "root"; // Database user
$db_pass = ""; // Password
$db_name = "gre"; // Database name
// Connect to the database
$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
// Get the metropolitan city name from the input
$city_name = $_POST['city'];
// Prepare the SELECT statement
$query = "SELECT Student.S_Name, Student.S_Aadhar_No,Parent_Guardian.P_Name, Parent_Guardian.P_Annual_Income
FROM Student
JOIN Parent_Guardian ON Student.P_AadharNO = Parent_Guardian.P_AadharNo
WHERE Parent_Guardian.P_Annual_Income < 700000 AND Student.App_Status = 'Accepted' AND Student.City_Name = '$city_name'";
// Execute the SELECT statement
$result = $conn->query($query);
// Check if the SELECT statement was successful
if ($result) {
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_array($result)) {
            $s_name = $row['S_Name'];
            $s_aadhar_no = $row['S_Aadhar_No'];
            $p_name = $row['P_Name'];
            $p_annual_income = $row['P_Annual_Income'];
            // ...
        }
    } else {
        // The SELECT statement failed, display an error message
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
    }
}
?>
