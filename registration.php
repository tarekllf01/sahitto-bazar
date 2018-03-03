<?php             
error_reporting(0);                                  // remove the pesky slashes from magic quotes if it's turned on
function clean_string($value){
 if(get_magic_quotes_gpc($value)){                      // removing sql_vulnerabelity
   $value=stripslashes($value);
    }                                                   // escaping things properly
return mysql_real_escape_string($value);
}
?>
<?php
session_start();
if(isset($_SESSION['logged'])){
echo "<script>alert('You have already registered.LOGOUT First' )</script>";
echo "<script>window.open('index.php','_self')</script>";
exit();
}
?>

<html>
<head>
<meta charset="UTF-8">
	<title>Registration Sahitto Bazar </title>
	<link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div> <?php include("includes/header.php");?> </div>

<div> <?php include("includes/navigation.php");?> </div>

<div id="main_content">
<h2 align="center" color="green">SAHITTO BAZAR REGISTEATION FORM</h2>

<div id="reg_form">
<center>
<form action="registration.php" method="post" enctype="multipart/form-data">
First Name :<br><input type="text" name="first_name" size="40px"> <br>
Last Name :<br><input type="text" name="last_name"size="40px"> <br>
Email:<br><input type="text" name="email"size="40px"> <br>
Login Name:<br><input type="text" name="login_name"size="40px"> <br>
Cell Phone :<br><input type="int" name="phone"size="40px"> <br>
City :<br><input type="text" name="city"size="40px"><br><br>
Gender : <select name="gender" style="width:120px;" >
<option value="male">  Male </option>
<option value="female">  Female </option>
<option value="others">  Others </option>
</select><br><br>




Password (please use special characters * # & %) : <br><input type="password" name="password1"size="40px"> <br>
Enter Password Again:<br><input type="password" name="password2"size="40px"><br><br>
Select A Profile Picture :(max-size:500 KB)<br>
<input name="uploaded_image" type="file"> <br> <br> <br>
<input type="submit" name="register" value="Register"size="40px">

</form>
</center>
</div>
<?php                                                       // starting registration process

error_reporting(0);
$image_name=mysql_real_escape_string($_FILES["uploaded_image"]["name"]);             //image informing in variable
$image_location= $_FILES["uploaded_image"]["tmp_name"];
$split=explode(".",$image_name);
$image_ext=end($split);
$image_size= $_FILES["uploaded_image"]["size"];
$upload_error= $_FILES["uploaded_image"]["error"];
$new=mysql_real_escape_string($_POST['email']);

if(isset($_POST["register"])){   
include("includes/connect_database.php");  						// checking the email is already exist or not 
$posted_email=mysql_real_escape_string($_POST['email']);
$login_name=mysql_real_escape_string($_POST['login_name']);
$search=mysql_query("SELECT * FROM user WHERE email='$posted_email'");
$search1=mysql_query("SELECT * FROM user WHERE login_name='$login_name'");
if(mysql_num_rows($search)>0){
echo "This email is already registered ";
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";

}
else if(mysql_num_rows($search1)>0){
echo "This user name already existed ";
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";

}
else if (!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){ // filter img and new name for image
echo "<script>alert('ENTER A VALID EMAIL')";
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";

}                                   // Image uploading error handle
else if(!$new=$new .".". $image_ext){
echo "<script>alert('unable to process file ')</script>"; 
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";
}
else if(!$image_location){
echo "<script>alert('ERROR : No file selected')</script>";      // checking no file selected
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";

}																	
else if(!preg_match("/.(jpg|png|gif)$/i",$image_name)){				
echo "<script>alert('ERROR: Your selected file is not jpg,png,or gif file')</script>"; 		       //formates checking 
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";               

}
else if ($image_size >512000){
echo "<script>alert('ERROR: Your selected file size is more than 500 KB ')</script>";                 //image  size checking
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";

}  
else if(!$move=move_uploaded_file($image_location,"profile_picture/$new")){   // checking image is moved or not (moving)
echo "<script>alert('ERROR: image not uploaded $new ')</script>";
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";


}
else if($_POST["first_name"]=="" or $_POST["last_name"]=="" or  $_POST["email"]=="" or (int)$_POST["phone"]<1000000000 or $_POST["city"]=="" or $_POST["password1"]==""
 or $_POST["password2"]=="" or (!is_numeric($_POST["phone"])) or $_POST['gender']=="" or $_POST['login_name']==""){ 
echo "<script>alert('Please fill all field correctly')</script>"; // checking inputs are null or not      
unlink($imagelocation); 
echo "<script>window.open('registration.php','_self')</script>";

}
else if($_POST["password1"]!=$_POST["password2"]){           //checking passwords are not different
echo "<script>alert('Both Passwords are not same')";
unlink($imagelocation);
echo "<script>window.open('registration.php','_self')</script>";

}

else {                                                   // saving posted data in temp variable

$first_name=mysql_real_escape_string($_POST['first_name']);
$last_name=mysql_real_escape_string($_POST['last_name']);
$login_name=htmlentities($login_name);
$email=mysql_real_escape_string($_POST['email']);
$city=mysql_real_escape_string($_POST['city']);
$phone=mysql_real_escape_string($_POST["phone"]);
$password1=mysql_real_escape_string($_POST["password1"]);
$password2=mysql_real_escape_string($_POST["password2"]);
$gender=mysql_real_escape_string($_POST['gender']);
date_default_timezone_set("Asia/Dhaka");       // date defULT TIME ZONE
$register_date=(string)date("y/m/d h:i:sa");           //date function
$password=$password1;                ///finished saving...



$first_name=htmlentities($first_name);
$last_name=htmlentities($last_name);
$email=htmlentities($email);
$phone=htmlentities($phone);
$password=htmlentities($password);
$city=htmlentities($city);
$gender=htmlentities($gender);

include("includes/connect_database.php");					// inserting data to database
$insert=mysql_query("INSERT INTO user(first_name,last_name,email,login_name,city,gender,phone,password,register_date,image_name) 
VALUES('$first_name','$last_name','$email','$login_name','$city','$gender','$phone','$password','$register_date','$new')");
if(!$insert){
echo "<script>alert('Could not registered please input correctly and try again')</script>";
echo "<script>window.open('registration.php','_self')</script>";
exit();
}
else {
echo "<script>alert('You have registered successfully LOG IN NOW ')</script>";
echo "<script>window.open('index.php','_self')</script>";
exit();
}
}                                                              



}                                                                 //end registration processes
?>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>



<div> <?php include("includes/sidebar.php");?> </div>

<div id="footer"> <?php include("includes/footer.php");?> </div>





</body>

</html>