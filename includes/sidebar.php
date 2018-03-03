<link rel="stylesheet" href="style.css" media="all">
<div id="sidebar"> 

<h2 align="center">FOLLOW US!</h2>
<div id="follow">
<a href="#"><img src="image/facebook.png" width="50px" height="50px"></a>
<a href="#"><img src="image/twetter.jpg" width="50px" height="50px"></a>
<a href="#"><img src="image/googleplus.png" width="50px" height="50px"></a>
<a href="#"><img src="image/youtube.png" width="50px" height="50px"></a><br><br>
</div> 



<?php 
error_reporting(0);
if($home!=1){
?>
<div id="cat">
<center><h3>Change Categories</h3></center>

<a href="index.php?pid=1&&cat=story"><div id="single_cat"><img src="image/story.jpg" width="55px" height="50px"><br><center> Story </center> </div></a>
<a href="index.php?pid=1&&cat=drama"><div id="single_cat"><img src="image/drama1.jpg" width="55px" height="50px"><br><center>Drama</center>  </div></a>
<a href="index.php?pid=1&&cat=poem"><div id="single_cat"><img src="image/poem.jpg" width="55px" height="50px"><br><center>Poems</center> </div></a>
<a href="index.php?pid=1&&cat=lyrics"><div id="single_cat"><img src="image/lyrics.jpg" width="55px" height="50px"><br><center>Lyrics</center> </div></a>
<a href="index.php?pid=1&&cat=jokes"><div id="single_cat"><img src="image/jokes.jpg" width="55px" height="50px"><br><center>Jokes  </center></div></a>
<a href="index.php?pid=1"><div id="single_cat"><img src="image/allc.jpg" width="55px" height="50px"><br><center> All </center></div></a>


</div>
<?php
}
?>


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

<a  href="login.php?see_post=1"> SEE YOUR POSTS</a> <a  href="login.php?pmessage=1"> message</a><br>

</div>

  <a href="login.php?logout=<?php echo $_SESSION['user_id'];?>"> LOGOUT </a> 
  <a href="login.php">VIEW FULL PROFILE</a>
<?php                                                                           //making admin login
$query=mysql_query("SELECT * FROM admin WHERE admin_id='$_SESSION[user_id]' AND password='$_SESSION[password]' ");
if(mysql_num_rows($query)){ 
$_SESSION['adlog']=1;
?>
<a href="admin/index.php?promot=9">admin</a>
<?php }
?>
</h3>

</div>
<?php 
}
else{ 
?>

<div id="login">
<center><form action="login.php" method="post">  
Login / User Name :<br>
<input type="text" name="login_name" size="35px"> <br>
Password : <br>
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
