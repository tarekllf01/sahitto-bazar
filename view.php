<?php
session_start();
if(!isset($_GET['post_id']))
exit();
error_reporting(0);                                  // remove the pesky slashes from magic quotes if it's turned on


?>
<html>
<head>
<meta charset="UTF-8">
	<title> Sahitto Bazar</title>
	<link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div> <?php include("includes/header.php");?> </div>

<div> <?php include("includes/navigation.php");?> </div>

<div id="main_content">

<?php                                                             //connecting data base & selecting database
include("includes/connect_database.php");

if(isset($_GET['post_id'])){
$post_id=mysql_real_escape_string($_GET['post_id']);
if($post_id==""){
echo "<script>alert('Post was removed ! ')</script>";
echo "<script>window.open('login.php?message=1','_self')</script>";
exit();

}
$query=mysql_query("SELECT * FROM post WHERE post_id='$post_id'");        //view full content 
while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$person_id=$row['person_id'];
$post_content=$row['post_content'];
$post_content=str_replace(PHP_EOL , "<br>" ,$post_content);
$person_name=$row['person_name'];
$person_email=$row['person_email'];
$person_phone=$row['person_phone'];
$price=$row['price'];
$activated=$row['activated'];
error_reporting(0);                                            // error hidden - shows variable to not logged in
if((!$activated) && ($person_id!=$_SESSION['user_id']) && !isset($_SESSION['adlog'])){
echo "WARNING : You wanted to do illegal things and your IP and also  pc's all cookies and passwords has been saved to us thank you!";
die();

}





$user=$person_id;
$query1=mysql_query("SELECT first_name,last_name,city,image_name,fb,fba FROM user WHERE user_id='$user'");/// grting user info
$row=mysql_fetch_array($query1);
$first_name=$row["first_name"]; 
$last_name=$row['last_name'];
$city=$row['city'];
$register_date=$row['register_date'];
$image_name=$row['image_name'];
$fb=$row['fb'];
$fba=$row['fba'];
}
?>
<div id="user_view_container">
<img src="profile_picture/<?php echo $image_name;?>" width="100px" height="100px" >
<div id="user_view">
<a href="login.php?usv=<?php echo $user; ?>">
Name: <?php echo $first_name."  ".$last_name;?></a><br>
City : <?php echo $city;?><br>
Phone : <?php echo $person_phone;?><br>
Email : <?php echo $person_email;?><br>

</div>
<?php
if($fb==1){
?>
<div id="fb">
<a href="<?php echo "http://".$fb; ?>"><img src="image/facebook.PNG" height="60px" width="60px" ></a>
</div>
<?php
}
?>
<div id="category_view">
	
Catagory: <?php echo $post_type;?><br>
Price: <?php echo $price; ?> TK<br>
Posted :<?php echo $post_date; ?>

</div>

</div>

<div id="full_view">
<center>
<p> <u>
<h2 font-style="none"> Post Title:<?php echo $post_title;  ?></h2>
</u> </center>
<br>
<i><?php echo $post_content;?></i>
</p>


<br><br>
<form method="post" action="view.php?post_id=<?php echo $post_id;?>">
Leave message for writer !<br>
<textarea name="msg" type="text" style="margin:5px;width: 80%;height: 100px;"></textarea>
   
<input type="submit" value="send" name="submit">
</form>

</div>

<?php                                                 

if(isset($_POST['submit'])){                                                     // leaving message for writer clicked
if(!isset($_SESSION['logged'])){
echo "<script>alert('You must log in first!')</script>";
echo "<script>window.open('view.php?post_id=$post_id','_self')</script>";
exit();
}
else if($_POST['msg']==""){
echo "<script>alert('You did not enter anything!')</script>";
echo "<script>window.open('view.php?post_id=$post_id','_self')</script>";
exit();
}
else{
date_default_timezone_set("Asia/Dhaka");
$date=date("d/m/y h:i:sa");
$from_id=$_SESSION['user_id'];
$from_name=$_SESSION['first_name']." ".$_SESSION['last_name'];
$table=($user%3);
$table="message".$table;
$msg=mysql_real_escape_string($_POST['msg']);
$msg=str_replace("<br>" , " " ,$msg);

$query1=mysql_query("INSERT INTO $table( msg,writer,from_id,from_name,on_post,on_post_id,date) VALUES ('$msg','$user','$from_id','$from_name','$post_title','$post_id','$date')");

if(!$query1){
echo "<script>alert('Failed to sending message \n try again!!')</script>";
echo "<script>window.open('view.php?post_id=$post_id','_self')</script>";
exit();
}
else{
echo "<script>alert('you sent a message!!')</script>";
echo "<script>window.open('view.php?post_id=$post_id','_self')</script>";
}
}


}

}
?>

</div>


<div> <?php include("includes/sidebar.php");?> </div>

<div id="footer"> <?php include("includes/footer.php");?> </div>
</body>
</html>