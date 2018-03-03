<?php
error_reporting(0);
session_start();
if(!isset($_SESSION['adlog']))
die();
else if(!isset($_SESSION['conf_log']) or $_SESSION['conf_log']==0 ){
echo "<script>window.open('includes/conf_log.php','_self')</script>";
exit();
}
else{
?>
<html>
<head>
<meta charset="UTF-8">
<title>Admin! manage user! </title> 

 <link rel="stylesheet" href="style.css" media="all">
</head>

<body>
<div><?php include("includes/header.php");?></div>
<div><?php include("includes/navigation.php");?> </div>
<div class="user">
<?php
if(isset($_GET['r_p']) && isset($_GET["act"])){
include("includes/connect_database.php");
$requested=mysql_real_escape_string($_GET['r_p']);
$high=40;
$low=($requested-1)*40;
$activated=(int)mysql_real_escape_string($_GET['act']);
$count=mysql_query("SELECT * FROM user WHERE activated='$activated'");
$total=mysql_num_rows($count);
$query=mysql_query("SELECT * FROM user WHERE activated='$activated' order by 1 DESC LIMIT $low , $high ");
while($row=mysql_fetch_array($query)){
$first_name=$row["first_name"];
$last_name=$row["last_name"];
$email=$row["email"];
$phone=$row["phone"];
$city=$row["city"];
$user_id=$row["user_id"];
$image_name=$row["image_name"];
$register_date=$row["register_date"];
$total_post=0;
if($activated){ 
$query0=mysql_query("SELECT * FROM post WHERE person_id='$user_id'");
$total_post=mysql_num_rows($query0);
}
?>

<div id="manage_user">
<?php
if(!$activated){                                                        // active now! button create 
?>
<a href="manage_user.php?r_p=<?php echo $high/40;?> &&act=<?php echo $activated;?> &&active=<?php echo $user_id;  ?> "><div id="active1"><img src="image/active.png" height="40px" width="40px"></div></a>
<?php
}																		 // profile image and delete button here
?>
<div id="img"><img src="../profile_picture/<?php echo $image_name;?>" height="150px" width="120px"></div>
<a href="manage_user.php?r_p=<?php echo $high/40;?>&&act=<?php echo $activated;?>&&delete=<?php echo $user_id; ?> "><div id="delete1"><img src="image/Delete.png" height="40px"width="40px"></div></a>
<div id="information">
<?php echo "User ID: ".$user_id."<br>Name: ".$first_name." ".$last_name."<br>Email:".$email."<br>City: ".$city."<br> phone:".$phone."<br>Total Post: ".$total_post;
echo "<br> Registered : ".$register_date;
 ?>
</div>



</div>
<?php
}
if(isset($_GET['active'])){                                                 // active now! button on click program
$user=mysql_real_escape_string($_GET['active']);
$r_p=(int)mysql_real_escape_string($_GET['r_p']);

$query1=mysql_query("UPDATE user SET activated='1' WHERE user_id='$user'");
if($query1){
echo "<script>alert('user activated!')</script>";
echo "<script>window.open('manage_user.php?r_p=$r_p && act=0','_self')</script>";
}
}
if(isset($_GET['delete'])){
$user=mysql_real_escape_string($_GET['delete']);
$act=(int)mysql_real_escape_string($_GET['act']);
$r_p=(int)mysql_real_escape_string($_GET['r_p']);
$image=mysql_query("SELECT image_name FROM WHERE user_id='$user'");
while($row=mysql_fetch_array($image))
   $image_name=$row["image_name"];
$query1=mysql_query("DELETE FROM user WHERE user_id='$user'");
if($query1){
unlink("../profile_picture/".$image_name);
echo "<script>alert('user deleted!')</script>";
echo "<script>window.open('manage_user.php?r_p=$r_p && act=$act','_self')</script>";
}
}
if($requested>1){
$prev=$requested-1;
?>
</div>
<a href="manage_user.php?<?php echo "r_p=".$prv." && act=".$activated;?>"> <div id="next">PREV
</div>
</a>
<?
}
if($high<$total){
$next=$requested+1;
?>
<a href="manage_user.php?<?php echo "r_p=".$next." && act=".$activated;?>"> <div id="next">NEXT
</div>
</a>
<?php
}
}
?>

</body>
</html>
<?php
}
?>