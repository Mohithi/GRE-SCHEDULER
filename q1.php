<?php
// PHP code to run the query
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get the user input
  $city = $_POST["city"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];

  // Connect to the database
  $conn = new mysqli("localhost", "root", "", "gre");
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  // Run the query
  $sql = "SELECT IVY_League.College_Name, ivy_league.Acceptance_Rate
          FROM IVY_League
          INNER JOIN Student
          ON IVY_League.College_Code = Student.College_Code
          INNER JOIN Metropolitan_City
          ON Student.MPin_Code = Metropolitan_City.Pin_Code
          WHERE Test_Date BETWEEN '$start_date' AND '$end_date'
          AND Metropolitan_City.City_Name = '$city'
          AND student.App_Status='Accepted'
          GROUP BY IVY_League.College_Name";
  $result = $conn->query($sql);
  // Display the results
  if ($result->num_rows > 0) {
    echo "<table><tr><th>College Name</th><th>Acceptance Rate</th></tr>";
    // Output data of each row
    while($row = $result->fetch_assoc()) {
      echo "<tr><td>".$row["College_Name"]."</td><td>".$row["Acceptance_Rate"]."</td></tr>";
    }
    echo "</table>";
  } else {
    echo "No results found.";
  }

  // Close the connection
  $conn->close();
}
?>
