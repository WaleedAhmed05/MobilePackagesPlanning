<!DOCTYPE html>


<?php




$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mobilepackage";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "select * from calls where Validity='0' ";
$records = $conn->query($sql);

?>


<html>
<head>
<title>Mobile Package Planning</title>
</head>
<body>
<font color="white">
<style>
body {
background-image: url('images/Frame_Background.jpg') }
</style>
<br>
<style>
a:link {
    color: white;
    background-color: transparent;
    text-decoration: none;
}
a:visited {
    color: white;
    background-color: transparent;
    text-decoration: none;
}
h2{display: inline;}
</style>
<B><center><h1><a href="/home.php">HOME </a>| Downloads | About Us | Contact Us</h1> </center></B>
<marquee><h2>Mobile Package Planning | Compare and get the most Suitable Pakckage</h2></marquee>
<br><br><br><br><br>


<center>
<pre>
<a href="dailysms.php"><img src="images/Daily.png">   <h2>Daily</h2>		<a href="weeklysms.php"><img src="images/Weekly.png">   <h2>Weekly</h2>		<a href="monthlysms.php"><img src="images/Monthly.png">   <h2>Monthly</h2>
</pre>
</center>

<br><br><br><br><br><br>
<center><h3>Mobile Package Planning | 2017</h3></center>
</font>
</body>
</html>

