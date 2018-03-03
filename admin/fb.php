<?php
session_start();
if(!isset($_SESSION['adlog']))
die();
error_reporting(0);                                  // remove the pesky slashes from magic quotes if it's turned on

?>
<html>
<head>
<meta charset="UTF-8">
	<title>FB CONFIRMATION</title>
 <link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div><?php include("includes/header.php");?></div>
<div><?php include("includes/navigation.php");?> </div>

<?php 
include("includes/connect_database.php");
if(isset($_GET['fb_c'])){
$n=0;
$fb_c=mysql_real_escape_string($_GET['fb_c']);
$start=($fb_c - 1)*100;
$limit=100;
$fba=2;
$query=mysql_query("SELECT user_id,first_name,last_name,fb FROM user WHERE fba='$fba' order by 1 DESC LIMIT $start,$limit ");
while($row=mysql_fetch_array($query)){
$n++;
$user_id=$row['user_id'];
$name=$row['first_name']." ".$row['last_name'];
$fb=$row['fb'];
?>
<div id="fb_c" >
<?php echo "ID : ".$user_id;
echo "Name : ".$name;
?>

<a href="includes/act_fb.php?act=<?php echo $user_id." && fb_c=".$fb_c;?> "> Active </a>
<a href="includes/act_fb.php?del=<?php echo $user_id." && fb_c=".$fb_c;?> "> Delete </a><br>
<?php echo "FB : ".$fb;?>
</div>

<?php
}
if($fb_c >1){ ?>
 <a href="fb.php?fb_c=<?php echo $fb_c-1 ;?>"> PREV</a>
 <?php 
}

if($n==100){

$query1=mysql_query("SELECT user_id,first_name,last_name,fb FROM user WHERE fba='$fba'");
$total=mysql_num_rows($query1);
if($total > ($fb_c * 100)){ ?>

 <a href="fb.php?fb_c=<?php echo $fb_c+1 ;?>"> NEXT </a>
<?php
}
}
}
?>









</body>
</html>