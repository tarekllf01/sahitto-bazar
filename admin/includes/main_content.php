<div id="main_content">
<?php 
if(isset($_GET['pid'])){
//connecting data base & selecting database
include("includes/connect_database.php");?>
<?php
$post_perpage=12;
$high=$_GET['pid']*$post_perpage;
$low=$high-($post_perpage-1);

$query=mysql_query("SELECT * FROM post WHERE activated='1' order by 1 DESC LIMIT $low,$high");
while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$post_content=substr($row['post_content'],0,120); //create sub string  of the whole content
$person_name=$row['person_name'];
$person_email=$row['person_email'];
$person_phone=$row['person_phone'];
$price=$row['price'];
?>

<a href="view.php?post_id=<?php echo $post_id;?>">
<div id="container">
<div id="publish"><h3 >Published by:<?php echo $person_name; ?> <br> Price:<?php echo $price; ?> TK</h3></div>
<div id="publish1">
<?php echo $post_content; ?>
</div>
<div id="title"><h2><?php echo $post_title;  ?></h2>
<h3>Category: <?php echo $post_type;?></h3></div>
</div>
</a>


<?php } 
}


else{
//connecting data base & selecting database
include("includes/connect_database.php");?>
<?php
$low=0;
$high=12;
$post_perpage=12; // also change in page_content.php line 7
$query=mysql_query("SELECT * FROM post WHERE activated='1' order by 1 DESC LIMIT $low,$high");
while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$post_content=substr($row['post_content'],0,100); //create sub string  of the whole content
$person_name=$row['person_name'];
$person_email=$row['person_email'];
$person_phone=$row['person_phone'];
$price=$row['price'];
?>

<a href="view.php?post_id=<?php echo $post_id;?>">
<div id="container">
<div id="publish"><h3 >Published by:<?php echo $person_name; ?> <br> Price:<?php echo $price; ?> TK</h3></div>
<div id="publish1">
<?php echo $post_content; ?>
</div>
<div id="title"><h2><?php echo $post_title;  ?></h2>
<h3>Category: <?php echo $post_type;?></h3></div>
</div>
</a>
<?php } }?> 

</div>
