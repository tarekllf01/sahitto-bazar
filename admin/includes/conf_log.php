<?php
if(isset($_POST['submit'])){
$log_name=mysql_real_escape_string($_POST['logname']);
$passo=mysql_real_escape_string($_POST['pass']);
include("connect_database.php");
$query=mysql_query("SELECT user_name,pass FROM admin WHERE user_name='$log_name' AND pass='$passo' ");
if($row=mysql_fetch_array($query)){
session_start();
$_SESSION['conf_log']=1;
include("disconnect.php");
echo "<script>window.open('../index.php','_self')</script>";
exit();
}
else{

include("disconnect.php");
echo "<script>alert('WRONG USERNAME OR PASSWORD')</script>";
echo "<script>window.open('conf_log.php','_self')</script>";
exit();
}
}
?>



<html>
<head>
<meta charset="UTF-8">
<title>Admin! log in! </title> 

 <link rel="stylesheet" href="../style.css" media="all">
 <style>
 body{background:#3900FD;}
 </style>
</head>
<body>
<div id="conf_log">
<form action="conf_log.php" method="post" >
USERNAME : <br><input type="text" name="logname" size="45px"><br><br>
PASSWORD : <br><input type="password" name="pass" size="45px"><br><br>
<input type="submit" name="submit" value="log in ">

</form>
</div>

</body>



</html>

