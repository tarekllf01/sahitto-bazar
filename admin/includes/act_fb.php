<?php
session_start();
if(!$_SESSION['adlog']){
die();
}
if(isset($_GET['act'])){
$act=mysql_real_escape_string($_GET['act']);
$fb_c=mysql_real_escape_string($_GET['fb_c']);
include("connect_database.php");
$query=mysql_query("UPDATE user SET fba='1' WHERE user_id='$act' ");
if($query){
echo "<script>alert('activated!')</script>";
echo "<script>window.open('../fb.php?fb_c=$fb_c ','_self')</script>";
exit();

}
if(!$query){
echo "<script>alert('ERROR: not activated!')</script>";
echo "<script>window.open('../fb.php?fb_c=$fb_c ','_self')</script>";
exit();

}

}





?>