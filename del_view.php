<?php
if(isset($_GET['delm'])){
echo $message=$_GET['delm'];
echo $continue=$_GET['m'];
echo $user=$_SESSION['user_id'];
echo $table=($user%3);
echo $table="message".$table;
include("includes/connect_database.php");
$query=mysql_query("DELETE FROM $table WHERE writer='$user' AND id='$message' ");
if($query){
echo "<script>alert('Message deleted!!')</script>";
echo "<script>window.open('login.php?message=$continue','_self')</script>";
exit();
}
else{
echo "<script>alert('You can not delete !!')</script>";
echo "<script>window.open('login.php?message=$continue','_self')</script>";
exit();

}


}

?>