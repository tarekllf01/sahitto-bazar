<?php
session_start();
if($_SESSION['fba']!=NULL){
echo "<script>window.open('login.php','_self')</script> ";
exit();
}
if(isset($_POST['submit_fb'])){
if($_POST['fb_profile']=="" or $_POST['fb_profile']=="www.facebook.com/your profile"){
echo "<script>alert('WARNING : You did not enter any things')</script>";
echo "<script>window.open('login.php','_self')</script> ";
exit();
}

$fb=mysql_real_escape_string($_POST['fb_profile']);

$user_id=$_SESSION['user_id'];
$fba=2;
include("includes/connect_database.php");
$query=mysql_query(" UPDATE user SET fba='$fba',fb='$fb' WHERE user_id='$user_id' ");
if($query){
$_SESSION['fba']=(int)$fba;
$_SESSION['fb']=$fb;
echo "<script>alert('Your fb will be addeed after check!!')</script>";
echo "<script>window.open('login.php','_self')</script> ";
exit();
}

if(!$query){
echo "<script>alert('ERROR:could not added try again!!')</script>";
echo "<script>window.open('login.php','_self')</script> ";
exit();

}

}

?>