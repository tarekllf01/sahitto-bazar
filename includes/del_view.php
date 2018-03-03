<?php
if(isset($_GET['usv'])){
include("includes/connect_database.php");
$user=mysql_real_escape_string($_GET['usv']);
$query1=mysql_query("SELECT first_name,last_name,email,city,gender,phone,register_date,image_name,fb,fba FROM user WHERE user_id='$user'");/// grting user info
$row=mysql_fetch_array($query1);
$first_name=$row['first_name']; 
$last_name=$row['last_name'];
$city=$row['city'];
$gender=$row['gender'];
$email=$row['email'];
$phone=$row['phone'];
$register_date=$row['register_date'];
$image_name=$row['image_name'];
$fb=$row['fb'];
$fba=$row['fba'];
$fb="http://".$fb;

$query=mysql_query("SELECT post_id FROM post WHERE person_id='$user'");
$count=mysql_num_rows($query);

?>
<div id="usv">
<img src="profile_picture/<?php echo $image_name;?>" width="200px" height="200px">
<div id="your_info">
Name : <?php echo $first_name;
echo "  ".$last_name;?><br>
Email: <?php echo $email;?><br>
City: <?php echo $city;?><br>
Phone : <?php echo $phone;?><br>
Registered ON :<i><?php echo $register_date;?></i><br>
Gender : <?php echo $gender;?> <br>
Total Post : <?php echo $count;?><br>
<a href="login.php?vhp=<?php echo $user."&&con=1";?>">view posts </a>

</div>
<div id="comm">
<?php
if($fba){ ?>
<a href="<?php echo $fb;?>">
<img src="image/facebook.png" width="100px" height="100px"></a>
<?php
} ?>
</div>
<br><br><br><br><br><br><br><br><br>
<form action="login.php?pmsg_to=<?php echo $user;?>" method="post" >
Message  <?php echo $first_name."  ".$last_name; ?> <br>
<textarea name="pmsg" type="text" style="margin:5px;width: 80%;height: 100px;"> write here!</textarea>
<input type="submit" name="submit_pmsg" value="send message">
</form>
</div>
<?php
}
?>