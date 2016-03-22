<?php

error_reporting(E_ALL);
ini_set('display_errors', 'On');
 
  
 

echo "Current PHP version:" . phpversion()." <br>";


echo "--> <font color=\"green\"><b> php is working</font> </b><br><br>";

echo"Test mysqli is installed and working...<br>";
if (!function_exists('mysqli_init') && !extension_loaded('mysqli')) {
    echo "<font color=\"red\">--> mysqli not supported!!!</font><br><br>";
} else {
    echo "--> <font color=\"green\"><b>mysqli supported </b></font><br><br>";
}


echo "Trying to make a connection to database... (default: localhost | name: root | no password)<br>";

$servername = "localhost";
$username = "root";


// Create connection
$conn = new mysqli($servername, $username);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "<font color=\"green\">--><b>  Connected successfully</b><br></font>";

phpinfo();

/*
echo "default content:<br>";

   $link = mysql_connect("localhost", "root");
   mysql_select_db("test");
   $query = "SELECT * FROM tabel";
   $result = mysql_query($query);
   while ($line = mysql_fetch_array($result))
   {
      foreach ($line as $value)
       {
         print "$value\n";
      }
   }
    mysql_close($link);*/
?>                               EOF

