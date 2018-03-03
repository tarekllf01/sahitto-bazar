<link rel="stylesheet" href="style.css" media="all">
<div id="sidebar1"> 

<h2 align="center">FOLLOW US</h2>
<div id="follow">
<a href="#"><img src="image/facebook.png" width="50px" height="50px"></a>
<a href="#"><img src="image/twetter.jpg" width="50px" height="50px"></a>
<a href="#"><img src="image/googleplus.png" width="50px" height="50px"></a>
<a href="#"><img src="image/youtube.png" width="50px" height="50px"></a><br><br>
</div> 
<?php
if(isset($_SESSION['logged'])){
?>
<div id="login">
<center> <img src="profile_picture/<?php echo $_SESSION['image_name'];?>" width="100px" height="125px" ></center><br>
<div id="contain_profile">
<h3> <b><?php echo $_SESSION['first_name']; 
echo "  ".$_SESSION['last_name'];?> </b><br>
Email: <i><?php echo $_SESSION['email'];?></i><br>
City: <i><?php echo $_SESSION['city'];?></i><br>
Phone : <i><?php echo $_SESSION['phone'];?></i><br>

Total Post : <?php include("total_post.php"); ?><br>

<a  href="login.php?see_post=1"> SEE YOUR POSTS</a><br>

</div>

  <a href="login.php?logout=<?php echo $_SESSION['user_id'];?>"> LOGOUT </a> 
  <a href="login.php">VIEW FULL PROFILE</a> 
</h3>

</div>
<?php  }
else{ ?>

<div id="login">
<center><form action="login.php" method="post">  
Email :<br>
<input type="text" name="email" size="35px"> <br>
Password:<br>
<input type="password" name="password" size="35px"> <br>
<input type="submit" name="login" value="login"><br>
</form>
<h3> Not registered yet!<a href="registration.php"> Register now </a></h3>
</center>
</div>
<?php } ?>


<div id="add_banner">
<center>
<h2> THE ADD SITES AND OTHER LINKS</h2>
<img src="image/add.gif" width="290px" height="450px">

</center>
</div>
</div>
