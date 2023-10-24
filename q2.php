<?php
// PHP code to run the query
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get the user input
  $college_name = $_POST["college_name"];

  // Connect to the database
  $conn = new mysqli("localhost", "root", "", "gre");
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // Run the query
  $sql = "SELECT Course_Name, Course_Cutoff
          FROM Course_Offering
          INNER JOIN IVY_League
          ON Course_Offering.College_Code = IVY_League.College_Code
          WHERE College_Name = '$college_name'";
  $result = $conn->query($sql);

  // Display the results
  if ($result->num_rows > 0) {
    echo "<table><tr><th>Course Name</th><th>Course Cutoff</th></tr>";
    // Output data of each row
    while($row = $result->fetch_assoc()) {
      echo "<tr><td>".$row["Course_Name"]."</td><td>".$row["Course_Cutoff"]."</td></tr>";
    }
    echo "</table>";
  } else {
    echo "No results found.";
  }

  // Close the connection
  $conn->close();
}
?>
