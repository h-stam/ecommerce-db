<?php 
$host = "localhost";  
$user = "stam11_eshop"; 
$password = "password";  
$dbase = "stam11_eshop"; 
$table = "Newsletter";  

$first_name= $_POST['firstname']; 
$last_name= $_POST['lastname']; 
$email= $_POST['email']; 

header("Location:newsletter.html");
  
// Connection to DBase  
$dbc= mysqli_connect($host,$user,$password, $dbase)  
or die("Unable to select database"); 
 
$query= "INSERT INTO $table  ". "VALUES ( NULL, '$first_name', '$last_name', '$email')"; 
 
mysqli_query ($dbc, $query) 
or die ("Error querying database"); 
 
echo '<script>alert("You have been successfully added.")</script>' . '<br>'; 
mysqli_close($dbc); 

?> 