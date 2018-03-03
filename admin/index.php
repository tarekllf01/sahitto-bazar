<?php
session_start();
if(!isset($_SESSION['adlog']))
die('sorry');
else if(!isset($_SESSION['conf_log']) or $_SESSION['conf_log']==0 ){
echo "<script>window.open('includes/conf_log.php','_self')</script>";
exit();
}
else if(isset($_GET['logout'])){                     //admin  logout activity
$_SESSION['conf_log']=0;
echo "<script>window.open('index.php','_self')</script>";
exit();

}
else{

                                  // remove the pesky slashes from magic quotes if it's turned on
?>
<html>
<head>
<meta charset="UTF-8">
	<title> Admin panel</title>
 <link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div><?php include("includes/header.php");?></div>
<div><?php include("includes/navigation.php");?> </div>

<?php 

include("includes/connect_database.php");

if(isset($_GET['r_p']) && isset($_GET['act'])){
$r_p=mysql_real_escape_string($_GET['r_p']);
$high=40;
$low=($r_p-1)*40;
$next=(int)mysql_real_escape_string($_GET['r_p']);
$activated=(int)mysql_real_escape_string($_GET['act']);
$query1=mysql_query("SELECT * FROM post WHERE activated='$activated'");
$total=mysql_num_rows($query1);
?>
<?php
error_reporting(0);
$query=mysql_query("SELECT * FROM post WHERE activated='$activated' order by 1 DESC LIMIT $low , $high "); // SELECTING POST IN SELECTED RANGE
while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$post_content=substr($row['post_content'],0,500);   //create sub string  of the whole content
$post_content=str_replace("<br>"," ",$post_content);
$person_id=$row['person_id'];
$person_name=$row['person_name'];
$price=$row['price'];

?>

<div id="admin_content">
<?php 
echo " Name : ";
?>
<a href="../login.php?usv=<?php echo $person_id;?>"><?php echo "  ".$person_name." ";?></a>

Post Title : <a href="../view.php?post_id=<?php echo $post_id;?>"><?php echo "  ".$post_title." ";?> </a>
<?php 
echo " Category : ".$post_type." ";
echo " Date : ".$post_date;
echo " Price : ".$price; 
if($activated==0){                                 //  POST ACTIVATION
	?>                     
	<a href="index.php?active=<?php echo $post_id*2011;?>&& r_p=<?php echo $next;?>&& act=<?php echo $activated;?>"> Active now! </a>	
	
<?php                                             // finished setting active button
	}	
?>
<a href="index.php?del=<?php echo $post_id*2011;?> &&r_p=<?php echo $next;?> && act=<?php echo $activated;?>">Drop! </a>
<br>
 <?php echo $post_content;?>
</div>


<?php
}

$prev=$next-1;
$next=$next+1;
if($prev>0){
?>
<a href="index.php?r_p=<?php echo $prev;?>&& act=<?php echo $activated;?>">  PREV  </a>
<?php
}
if((($next-1)*40)<$total){
?>
<a href="index.php?r_p=<?php echo $next;?>&& act=<?php echo $activated;?>">  NEXT  </a>
<?php
}
if(isset($_GET['active'])){                                                    // active now button on click program
$id=(mysql_real_escape_string($_GET['active']))/2011;
$load=mysql_real_escape_string($_GET['r_p']);
$query3=mysql_query("UPDATE post SET activated='1' WHERE post_id='$id'");
if($query3){
echo "<script>alert('activated!!')</script>";
echo "<script>window.open('index.php?r_p=$load && act=$activated','_self')</script>";
}
}
if(isset($_GET['del'])){ 															// delete button on click program
$id=(clean_string($_GET['del']))/2011;
$load=clean_string($_GET['r_p']);
$query2=mysql_query("DELETE FROM post WHERE post_id='$id'");
if($query2){
echo "<script>alert('deleteed!!')</script>";
echo "<script>window.open('index.php?r_p=$load && act=$activated','_self')</script>";
}
}
}


else{
?>
<div id="admin_content1">
<center>
<img src="image/administration.jpg" width="200px" height="200px">
<h2>"WELLCOME MR. TAREK HOSSEN"</h2>
<h3>"YOU ARE ACTING AS ADMIN"</h3>
<img src="image/admin.jpg" width="350px" height="350px">

</center>

<br><br>
</div>
<?php 
} 
?>
</body>
</html>
<?php
}
?>