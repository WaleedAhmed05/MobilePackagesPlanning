<!DOCTYPE html>


<?php

//mysql_connect('localhost','root','');
//mysql_select_db('mobilepackage');
//$sql="SELECT Company_Name,Package_Name,Volume,Price,Validity,Activation_code from sms where volume=(select max(volume) from sms where Validity=1) and Validity=1 ";
//$records=mysql_query($sql);



$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mobilepackage";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT Company_Name,Package_Name,Volume,Price,Validity,Activation_code from sms where volume=(select max(volume) from sms where Validity=1) and Validity=1 ";
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
</style>
<center>
<a href="home.php"><img src="images/MainLogo.png">
</a>
<br>
<h2>Mobile Package Planning </h2>
<br>
</center>

<B><center><h1><a href="/home.php">Home </a>| Downloads | About Us | Contact Us</h1> </center></B>
<center>
<h1>Highest Volume Daily SMS Packages</h1>



<table width="80%" border="1" cellpadding="1" cellspacing="1">
<tr>
<style>
th {
    background-color: grey;
}
</style>

<th>Service Provider</th>
<th>Package Name</th>
<th>Volume</th>
<th>Price</th>
<th>Validity</th>
<th>Activation Code</th>
<tr>
<?php

while($sms=mysqli_fetch_assoc($records)){
	echo "<tr>";
	echo "<center>";

	echo "<td>". $sms['Company_Name']."</td>";
	echo "<td>". $sms['Package_Name']."</td>";
	echo "<td>". $sms['Volume']."</td>";
	echo "<td>". $sms['Price']."</td>";
	echo "<td>". $sms['Validity']."</td>";
	echo "<td>". $sms['Activation_code']."</td>";
	
	echo "</center>";
	echo "</tr>";
}

?>

</table>
</center>
<br><br><br><br>
<center><h3>Mobile Package Planning | 2017</h3></center>
</font>
</body>
</html>

