<?php             
error_reporting(0);                                  // remove the pesky slashes from magic quotes if it's turned on
function clean_string( $value){
 if(get_magic_quotes_gpc($value)){                      // removing sql_vulnerabelity
   $value=stripslashes($value);
}                                                   // escaping things properly
return mysql_real_escape_string($value);
}
?>


<?php 
session_start();
if(!isset($_SESSION['logged']) && !isset($_POST['login'])){
 echo "<script>alert('YOU MUST LOG IN FIRST')</script>";
 echo "<script> window.open('index.php','_self')</script>";
 exit();
}

?>
<html>
<head>
<meta charset="UTF-8">
	<title>Sahitto Bazar </title>
	<link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div> <?php include("includes/header.php");?> </div>

<div> <?php include("includes/navigation.php");?> </div>

<div id="main_content"> 


<?php											//checking email and password
if(isset($_POST['login'])){
$login_name=mysql_real_escape_string( $_POST['login_name']);
$password=mysql_real_escape_string( $_POST["password"]);
include("includes/connect_database.php");
$query=mysql_query("SELECT user_id,first_name,email,city,phone,register_date,image_name,fb,fba,gender FROM user WHERE login_name='$login_name' && password='$password'");
$row1=mysql_num_rows($query);
if($row1==0){
echo "<script>alert('User name or Password was incorrect')</script>";
echo "<script>window.open('index.php','_self')</script>";
exit;
}
else{
$row=mysql_fetch_array($query);
echo "successfully logged in";
$_SESSION['user_id']=$row['user_id'];
$_SESSION['first_name']=$row['first_name'];
$_SESSION['last_name']=$row['last_name'];
$_SESSION['email']=$row['email'];
$_SESSION['city']=$row['city'];
$_SESSION['phone']=$row['phone'];
$_SESSION['register_date']=$row['register_date'];
$_SESSION['image_name']=$row['image_name'];
$_SESSION['logged']=1;
$_SESSION['fb']=$row['fb'];	
$_SESSION['fba']=$row['fba'];	
$_SESSION['gender']=$row['gender'];											               	//after logged
}
include("includes/disconnect.php");
}

 
if(isset($_SESSION['logged'])){

?>
<div id="logged">																	        
<a href="login.php?logout=<?php echo $_SESSION['user_id'];?>"> LOGOUT </a>
<?php if(isset($_GET['logout'])){     				//  LOGOUT SYSTEM CONTINUED
	session_destroy();
	echo "<script> window.open('index.php','_self')</script>";
	exit();
	}
?>
<center> <img src="profile_picture/<?php echo $_SESSION['image_name'];?>" width="200px" height="250px" ></center><br>
<div id="my_info">
Name : <i><?php echo $_SESSION['first_name'];
echo "  ".$_SESSION['last_name'];?> </i><br>
Email: <i><?php echo $_SESSION['email'];?></i><br>
City: <i><?php echo $_SESSION['city'];?></i><br>
Phone : <i><?php echo $_SESSION['phone'];?></i><br>
Gender : <?php echo $_SESSION['gender'];?><br>
Registered ON :<i><?php echo $_SESSION['register_date'];?></i><br>
Total Post : <?php include("includes/total_post.php"); ?>

</div>

<h3> 
<a href="login.php?pc=<?php echo $_SESSION['user_id'];?>"> Change Password</a>  
<a href="login.php?cp=<?php echo $_SESSION['user_id'];?>">Change profile picture</a> 
<a href="login.php?see_post=1"> SEE POSTS </a> 
<a href="login.php?message=1">Message on post </a>
<a href="login.php?pmessage=1"> Message </a>
<br> 
</h3>

</div>

<div id="comm1">
<?php
if($_SESSION['fba']==1){ 
?>
<a href="<?php echo "http://".$_SESSION['fb'];?>">  <img src="image/facebook.png" height="100px" width="100px"> </a>
<?php
}
else if($_SESSION['fba']==2){
?>
<img src="image/facebook.png" height="30px" width="30px"> <br>
Your fb account is is pending for admin confirmation ! <br> It will be added soon!
<?php
}



else{ 
?>
<img src="image/facebook.png" height="20px" width="20px">
You didn't add your FB profile<br> ADD now!
<form method="post" action="fba.php" >
<textarea name="fb_profile" type="text" style="height:50px; width:200px;">
www.facebook.com/your profile 

</textarea>
<input type="submit" name="submit_fb" value="ADD" > 

</form>
<?php
}

?>
</div>
<?php










 

 if(isset($_GET['cp'])){     // if clicked on Change Profile 
$cp=$_GET['cp'];
include("includes/profile_pic.php");
}




if(isset($_GET['pc'])){							//changing password
?>
<h3>
<form action="login.php" method="post">
Input Old Password:<br>
<input type="text" name="old_password"><br>	
Input New Password:<br>												
<input type="text" name="password"><br><br>
<input type="submit" name="change" value="Change Password"><br>
</form><br>
</h3>


<?php 
 }                                                                                      // see post 
if(isset($_GET['see_post'])){
$gsee=(int)mysql_real_escape_string($_GET['see_post']);
$low=($gsee-1)*20;
$high=20;
$user_id=$_SESSION['user_id'];
include("includes/connect_database.php");           
$query=mysql_query("SELECT * FROM post WHERE person_id='$user_id' order by 1 DESC LIMIT $low,$high ");

while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_title=$row['post_title'];
$post_content=$row['post_content'];
$post_content=str_ireplace("<br>" ," ," , $post_content);
$post_content=substr($post_content,0,300);
$category=$row['post_type'];
$date=$row['post_date'];

$activated=$row['activated'];
?>


<div id="own_view">
<a href="view.php?post_id=<?php echo $post_id;?>">
	<?php echo "  Post Title : ".$post_title."  ";                                       // SHOW PENDING POSTS FOR USER
	if(!$activated){
	echo "  (PENDING)   ";
	}
?>
</a>
<?php
echo "  Category : ";
?>
<a href="index.php?pid=1&&cat=<?php echo $category;?>"> <?php echo $category;?> </a>
$category;
<?php
echo " Date : ".$date;
?>
<a href="login.php?r=<?php echo $low." && delete=".$post_id*2011;?>">
DELETE
</a><br>
<?php
 echo $post_content;?>
</div>

<?php
}
?>

<div id="view2">
<?php 
$query=mysql_query("SELECT * FROM post WHERE person_id='$_SESSION[user_id]'");        ////adding next pages button
$ftotal=mysql_num_rows($query);?>
<h3>Pages: <a href="login.php?see_post=1"> 1 </a>
<?php
for($i=1;$i<=$ftotal;$i++){
if(($i%20==0) && $i<$ftotal){?>
<a href="login.php?see_post=<?php echo (int)($i/20)+1;?>"><?php echo  "  ".(int)($i/20)+1;?></h3> </a>
</div>

<?php 
} } }
 



if(isset($_POST['change'])){  
$user_id=$_SESSION['user_id'];                                                   // ||if click on password change 
$old_password=mysql_real_escape_string($_POST['old_password']);	
$password=mysql_real_escape_string($_POST['password']);							
include("includes/connect_database.php");

$change1=mysql_query("SELECT * FROM user WHERE user_id='$user_id' AND password='$old_password' ");
if(!$s=mysql_num_rows($change1)){
echo "<script>alert('ERROR: Password incorrect! not  Changed! Try again!')</script>";
 echo "<script> window.open('login.php?pc=$user_id')</script>";

   } 
if($s)
$changed=mysql_query(" UPDATE user SET password='$password' WHERE user_id='$_SESSION[user_id]' AND password='$old_password'");

if($changed){
echo "<script>alert('Password Changed')</script>";
  //session_start();
 // $_SESSION['password']=$password;        														// password Changed
echo "<script>window.open('login.php','_self')</script>";																						
}
}




if(isset($_GET['delete']) && isset($_GET['r'])){                                                   //deleting POSTS 
$post_id=$_GET['delete']/2011;
$return=mysql_fetch_array($_GET['r']);
$return=($return/12)+1;
include("includes/connect_database.php");
$confirm=mysql_query("SELECT person_id FROM post WHERE post_id='$post_id'");
$row=mysql_fetch_array($confirm);
error_reporting(0);
if($row['person_id']!=$_SESSION['user_id']){
echo "<script>alert('that's not yours. Your IP and Cookies are targeted!!!')</script>";
echo "<script>window.open('login.php?see_post=1','_self')</script>";
exit();
}
$delete=mysql_query("DELETE FROM post WHERE post_id='$post_id'");
if($delete){
     echo "<script>alert('Your post has been deleted!')</script>";
	 echo "<script>window.open('login.php?see_post=$return','_self')</script>";
	 exit();
	 }
else{
echo "<script>alert('could not delete')</script>";
}
}

if(isset($_GET['message']) or isset($_GET['pmessage'])){                                 // clicked on ((message)) button  !!!!!! 
include("includes/message.php");
}

if(isset($_GET['vhp'])){
include("includes/view_his_post.php");

}

if( isset($_GET['usv'])){                                   // clicked delete on messase.php 
include("includes/del_view.php");
}
               //  if get $_GET['pmsg'] personal message sending  clicked 
			   
if(isset($_GET['pmsg_to'])){                             /////////////////////// START  PMSG GET METHOD TO SEND PERSONAL MESSAGE/////////
$send_to=mysql_real_escape_string($_GET['pmsg_to']);
if(isset($_POST['submit_pmsg'])){
$pmsg=mysql_real_escape_string($_POST['pmsg']);
$pmsg=str_replace("<br>"," ",$pmsg);
include("includes/connect_database.php");
$send_from=$_SESSION['user_id'];
$send_from_name=$_SESSION['first_name']." ".$_SESSION['last_name'];
$table=($send_to%3);
$table="msg".$table;
$date=(string)date("d/m/y h:i:sa ");
$query=mysql_query("INSERT INTO $table(msg,send_to,send_from,send_from_name,date) VALUES('$pmsg','$send_to','$send_from','$send_from_name','$date') ");
if($query){
echo "<script>alert('your message has been sent!!')</script>";
echo "<script>window.open('login.php?usv=$send_to','_self')</script>";
exit();
}
else{
echo "<script>alert('could not sent message!!\n try again !!')</script>";
echo "<script>window.open('login.php?usv=$send_to','_self')</script>";
exit();
}
}

}


///////////////////////ENDIN PMSG GET METHOD TO SEND PERSONAL MESSAGE/////////


      //////    isset $_GET['delm']         starting get delm deleting post message
	  
	  
	  
if(isset($_GET['delm'] )){                                                                  // delm delete message

$message=mysql_real_escape_string($_GET['delm']);
$continue=mysql_real_escape_string($_GET['m']);
$user=$_SESSION['user_id'];
$table=($user%3);
$table="message".$table;
include("includes/connect_database.php");
$query=mysql_query("DELETE FROM $table WHERE writer='$user' AND id='$message' ");
if($query){
echo "<script>alert('Message deleted!!')</script>";
echo "<script>window.open('login.php?message=$continue','_self')</script>";
exit();
}
else{

echo "<script>alert('You can not delete it!!')</script>";
echo "<script>window.open('login.php?message=$continue','_self')</script>";
exit();
}
}
    ////                        end of deletin delm post message 

    ///                            if isset $_GET['delpm']  personal message  delete


if(isset($_GET['delpm'])){
$message=mysql_real_escape_string($_GET['delpm']);
$continue=mysql_real_escape_string($_GET['m']);
$user=$_SESSION['user_id'];
$table=($user%3);
$table="msg".$table;
include("includes/connect_database.php");
$query=mysql_query("DELETE FROM $table WHERE id='$message' AND send_to='$user' ");
if($query){
echo "<script>alert('Message deleted!!')</script>";
echo "<script>window.open('login.php?pmessage=$continue','_self')</script>";
exit();
}
else{

echo "<script>alert('You can not delete it!!')</script>";
echo "<script>window.open('login.php?pmessage=$continue','_self')</script>";
exit();
}
}
								// $_GET['delpm'] end 

//// end of deleteing personal message                                           




}

?>
</div>
</div>
<div> <?php include("includes/sidebar.php");?> </div>   

<div> <?php include("includes/footer.php");?> </div>
</body>
</html>