<?php
session_start();
if(!isset($_GET['post_id'])){
exit();
}
?>
<html>
<head>
	<title> Sahitto Bazar</title>
	<link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div> <?php include("includes/header.php");?> </div>

<div> <?php include("includes/navigation.php");?> </div>

<div id="main_content">
<?php                                                             //connecting data base & selecting database
include("includes/connect_database.php");?>
<?php
if(isset($_GET['post_id'])){
$post_id=$_GET['post_id'];
$query=mysql_query("SELECT * FROM post WHERE post_id='$post_id'");        //view full content 
while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$person_id=$row['person_id'];
$post_content=$row['post_content'];
$person_name=$row['person_name'];
$person_email=$row['person_email'];
$person_phone=$row['person_phone'];
$price=$row['price'];
$activated=$row['activated'];
error_reporting(0);                                            // error hidden - shows variable to not logged in
if((!$activated) && ($person_id!=$_SESSION['person_id'])){

echo "WARNING : You wanted to do illegal things and your IP and also  pc's all cookies and passwords has been saved to us thank you!";
die();

}
?>

<div id="full_view">

<h2 font-style="none"> Post Title:<?php echo $post_title;  ?></h2>
<h3>
	Catagory: <?php echo $post_type;?>
	<br>Date:<?php echo $post_date; ?>
</h3>
<div id="publish2"><h3 >Published by:<?php echo $person_name; ?> <br> Price:<?php echo $price; ?> TK</h3></div>
<center><p> <u>Main content:</u><br><i><?php echo $post_content;?></i></p></center>
<h3> Email :<?php echo $person_email;?>  </h3>
<h3> Phone :<?php echo $person_phone;?>  </h3>
</div>
</a>

<?php } }?>

</div>


<div> <?php include("includes/sidebar.php");?> </div>

<div id="footer"> <?php include("includes/footer.php");?> </div>
</body
</html>