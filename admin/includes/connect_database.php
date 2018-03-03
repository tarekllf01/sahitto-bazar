<?php
$sql=mysql_connect("localhost","ami","010101");
if(!$sql){
	echo "<script>alert('could not connected')</script>";
	exit();
	}
$db=mysql_select_db("bazar",$sql);
if(!$db){
	echo "<script>alert('could not select db')</script>";
	exit();
	}
?>
