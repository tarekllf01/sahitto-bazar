<?php
session_start();
if(!isset($_SESSION['user_id'])){
 echo "you dont have permissions log in again!"; 
 exit();
}




include("connect_database.php");
$find=mysql_query("SELECT image_name FROM user WHERE user_id='$_SESSION[user_id]'");
$row=mysql_fetch_array($find);
$oldImage=$row["image_name"];
?>

<div id="cp" >
<center>
<form method="post" action="includes/profile_pic.php" enctype="multipart/form-data">
Select an image (MAX:500 KB)<br>
<input type="file" name="cpp"><br><br>
<input type="submit" name="cpps" value="change"><br>	
</form>	
 </center>
 </div>
 
 
 <?php
 if(isset($_POST['cpps'])){
 $image=$_FILES["cpp"]["tmp_name"];
 $imageName=$_FILES["cpp"]["name"];
 $split=explode(".",$imageName);
 $ext=end($split);
 $imageSize=$_FILES["cpp"]["size"];
 $error=$_FILES["cpp"]["error"];
 $uploadName=$_SESSION['email'].".".$ext;
 $ext=strtolower($ext);
 $user_id=$_SESSION['user_id'];           
 if($image==""){
    echo "ERROR: You did not selected file";
	unlink($iamge);
	include("includes/disconnect.php");
	exit();

 }
 if($imageSize>500000){
    echo "size is greater than 500 KB ";
	unlink($image);
	include("includes/disconnect.php");
	exit();
	}
if($ext!="jpg" && $ext!="png" && $ext!="gif" && $ext!="jpeg"){
	echo "Your selected file is not  in jpg ,png,jpeg or gif formate ";
	unlink($image);
	include("includes/disconnect.php");
	exit();
}
if($error){
 echo "something wrong check again";
 unlink($image);
 include("includes/disconnect.php");
 exit();

}

if(!unlink("../profile_picture/$oldImage") or !move_uploaded_file($image,"../profile_picture/$uploadName")){
echo "ERROR :Could not uploaded file <br>";
unlink($image);
include("includes/disconnect.php");
exit();

}

else{
error_reporting(0);
    session_start();
    $_SESSION['image_name']=$uploadName;
	$query=mysql_query("UPDATE user SET image_name='$uploadName' WHERE user_id='$user_id'");
	if($query){
	include("includes/disconnect.php");
	echo "<script>alert('changeed')</script>";
	echo "<script>window.open('../login.php','_self')</script>";
	exit();
	}

	echo "<script>alert('could not CHANGED !!')</script>";
	echo "<script>window.open('../login.php','_self')</script>";
	exit();
}
 
} 
 

?>
 
