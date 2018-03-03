<?php
if(isset($_GET['uid'])){
$person_id=$_GET['uid'];
include("connect_database.php");





}
else{
include("connect_database.php");
$query=mysql_query("SELECT post_id FROM post WHERE person_id='$_SESSION[user_id]'");
$count=mysql_num_rows($query);
echo $count."   ";
}
?>