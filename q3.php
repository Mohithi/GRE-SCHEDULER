<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Get the user input
  $year = $_POST["year"];
  // Connect to the database
  $conn = new mysqli("localhost", "root", "", "gre");
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  // Run the query
  $sql = "SELECT Metropolitan_City.City_Name, AVG(GRE.G_Score) AS Average_G_Score
          FROM Metropolitan_City
          INNER JOIN Student ON Metropolitan_City.Pin_Code = Student.MPin_Code
          INNER JOIN GRE ON Student.G_ID = GRE.G_ID
          WHERE Test_Date BETWEEN '$year-01-01' AND '$year-12-31'
          GROUP BY Metropolitan_City.City_Name";
  $result = $conn->query($sql);
  // Display the results
  if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo "Average G Score for ".$row["City_Name"]." in ".$year.": ".$row["Average_G_Score"];
  } else {
    echo "No results found.";
  }
  // Close the connection
  $conn->close();
}
?>
