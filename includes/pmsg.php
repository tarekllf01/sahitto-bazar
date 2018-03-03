<?php

echo "<script>alert('could not sent message!!\n try again !!')</script>";
if(isset($_GET['pmsg_to'])){
$send_to=mysql_real_escape_string($_GET['pmsg_to']);
if(isset($_POST['submit_pmsg'])){
$pmsg=mysql_real_escape_string($_POST['pmsg']);
$pmsg=str_replace("<br>"," ",$pmsg);
include("includes/connect_database.php");
$send_from=$_SESSION['user_id'];
$send_from_name=$_SESSION['first_name']." ".$_SESSION['last_name'];
$table=($send_to%3);
$table="msg".$table;
$date=<string)date("d/m/y h:i:sa ");
$query=mysql_query("INSERT INTO $table(msg,send_to,send_from,send_from_name,date) VALUES('$pmsg','$send_to','$send_from','$send_from_name','$date') ");
if($query){
echo "<script>alert('your message has been sent!!')</script>";
echo "<script>window.open('login.php?usv=$send_to','_self')</script>";
exit();
}
else{
echo "<script>alert('could not sent message!!\n try again !!')</script>";
echo "<script>window.open('login.php?usv=$send_to','_self')</script>";
exit();
}
}

}
?>