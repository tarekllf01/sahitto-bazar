<?php
if(!isset($_SESSION['logged'])){
echo "YOU tried an unwanted query";
   exit();
}
if(isset($_GET['pmessage'])){
$message=(int)mysql_real_escape_string($_GET['pmessage']);
$send_to=$_SESSION['user_id'];
$table=($send_to%3);
$table="msg".$table;
$start=($message-1)*20;
include("includes/connect_database.php");
$query1=mysql_query("SELECT * FROM $table WHERE send_to='$send_to'");
$total=mysql_num_rows($query1);
$query=mysql_query("SELECT * FROM $table WHERE send_to='$send_to' order by 1 DESC LIMIT $start,10 "); 
while($row=mysql_fetch_array($query)){
 $id=$row['id'];
 $msg=$row['msg'];
 $send_from=$row['send_from'];
 $send_from_name=$row['send_from_name'];
 $date=$row['date'];

?>
<div id="msg" >
<a href="login.php?usv=<?php echo $send_from;?>">
<?php 
echo $send_from_name ;?>
</a>
<?php 
echo " Date : ".$date; 
?>
<a href="login.php?delpm=<?php echo $id; ?>&&m=<?php echo $message;?> "> Delete </a>
<br>
<?php
 echo $msg;
?>

</div>


<?php
}

if($message>1){ ?>
<a href="login.php?pmessage=<?php echo $message-1 ;?>"> PREV </a>
<?php
}
if($total >($start+20)){  ?>
<a href="login.php?pmessage=<?php echo $message+1 ;?>"> NEXT </a>

<?php
}
}

if(isset($_GET['message'])){
$message=(int)mysql_real_escape_string($_GET['message']);
$writer=$_SESSION['user_id'];
$table=($writer%3);
$table="message".$table;
$start=($message-1)*20;
include("includes/connect_database.php");
$query1=mysql_query("SELECT * FROM $table WHERE writer='$writer' ");
$total=mysql_num_rows($query1);
$query=mysql_query("SELECT * FROM $table WHERE writer='$writer' order by 1 DESC LIMIT $start,20 "); 
while($row=mysql_fetch_array($query)){
$id=$row['id'];
$writer=$row['writer'];
$msg=$row['msg'];
$from_id=$row['from_id'];
$from_name=$row['from_name'];
$on_post=$row['on_post'];
$on_post_id=$row['on_post_id'];
$date=$row['date'];

?>
<div id="msg" >
<a href="login.php?usv=<?php echo $from_id;?>">
<?php 
echo $from_name ;?>
</a>
On Post : <a href="view.php?post_id=<?php echo $on_post_id;?>"><?php echo $on_post;?> </a>
<?php 
echo " Date : " .$date."  "; 
?>
<a href="login.php?delm=<?php echo $id; ?> &&m=<?php echo $message;?> "> Delete </a>
<br>
<?php echo $msg;?>

</div>
<?php
}

if($message>1){ ?>
<a href="login.php?message=<?php echo $message-1 ;?>"> PREV </a>
<?php
}
if($total >($start+20)){  ?>
<a href="login.php?message=<?php echo $message+1 ;?>"> NEXT </a>

<?php
}



}
?>
