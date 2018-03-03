<?php           // remove the pesky slashes from magic quotes if it's turned on
function cstring($value){
 if(get_magic_quotes_gpc($value)){                      // removing sql_vulnerabelity   //not working!
   $value=stripslashes($value);
    }                                                   // escaping things properly
return mysql_real_escape_string($value);
}



session_start();
if(!isset($_SESSION['logged'])){
echo "<script> alert('You must log in first!')</script>";
echo "<script>window.open('index.php','_self')</script>";
exit();
}


if(isset($_SESSION['logged'])){
?>

<html>
<head>
<meta charset="UTF-8">
	<title>Publish your post  </title>
	<link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div> <?php include("includes/header.php");?> </div>
<div> <?php include("includes/navigation.php");?> </div>
<div id="main_content">
<h2 align="center">Fill all the inputs bellow!</h2>

<div id="form">
<form action="make_post.php" method="post"size="50px">
Title :<br><input type="text" name="title"size="50px"> <br><br>
Category :<br><select name="type"> 
<option value="poem"> POEM ( কবিতা  )</option>
<option value="story"> STORY ( গল্প  ) </option>
<option value="drama"> DRAMA SCRIPTS ( নাটক  )</option>
<option value="lyrics"> LYRICS ( গানের কথা  )</option>
<option value="jokes"> JOKES & FUN ( জোকস  )</option>

</select>
<br><br>
Post Content :<br><textarea name="post" style="margin:5px;width: 400px;height: 258px;"></textarea><br><br>
Price :<br><input type="int" name="price"size="50px"> TK<br><br><br>
<input type="submit" name="submit" value="submit">

</form>
</div>


</div>

<div> <?php include("includes/sidebar.php");?> </div>
<div id="footer"> <?php include("includes/footer.php");?> </div>

</body>
</html>

<?php
date_default_timezone_set("Asia/Dhaka");
if(isset($_POST['submit'])){
$post_date=(string)date("d/m/y h:i:sa");     //d/m/y
$post_title=mysql_real_escape_string($_POST["title"]); 
$post_title=htmlentities($post_title);
$post_type=mysql_real_escape_string($_POST['type']);
$post_content=$_POST['post'];
$post_content=htmlentities($post_content);
$post_content=mysql_real_escape_string($post_content);

$post_content=str_replace(PHP_EOL , "<br>",$post_content);
$person_name=$_SESSION['first_name'];
$person_id=$_SESSION['user_id'];
$person_email=$_SESSION['email'];
$person_phone=$_SESSION['phone'];
$price=mysql_real_escape_string($_POST["price"]); // SHOW TEST INPUT
$price=htmlentities($price);

if($post_title=="" or $post_type=="" or $post_content=="" or $person_name=="" or $person_email=="" or  (int)$person_phone<1000000000 or $price=="" or (!is_numeric($price))){
 echo "<script> alert('please fill all inputs correctly!') </script>";
 exit();
}
else {
include("includes/connect_database.php");
$query=mysql_query("INSERT INTO post(post_date,post_title,post_type,post_content,person_id,person_name,person_email,person_phone,price) VALUES ('$post_date','$post_title','$post_type','$post_content','$person_id','$person_name','$person_email','$person_phone','$price')");

if(!$query){
	echo "<script>alert('could not saved into the database')";
	exit();
}
else{

echo "<script> alert('POST SAVED SUCCESS FULLY!  IT WILL BE PUBLISHED AFTER ADMIN,S CHECKING!!') </script>";
echo "<script> window.open('make_post.php','_self')</script>";
$post_type=NULL;
$post_content="";
exit();

}
}
}

}
?>
