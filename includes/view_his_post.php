<?php
if(!isset($_GET['con']))
exit();
$person_id=mysql_real_escape_string($_GET['vhp']);
$continue=mysql_real_escape_string($_GET['con']);
$start=($continue-1)*10;
$n=1;
$search=mysql_query("SELECT * FROM post WHERE person_id='$person_id' AND activated='1' order by 1 DESC LIMIT $start,10 ");
while($row=mysql_fetch_array($search)){
if($n==1){
$person_name=$row['person_name'];?>
<center>
<?php echo " Showing Posts made by : ".$person_name; ?></center>
<?php
$n++;
}
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$post_content=$row['post_content'];
$post_content=str_ireplace("<br>" ," ," , $post_content);
$post_content=substr($post_content,0,200);
$price=$row['price'];
?>
<div id="own_view">
<a href="view.php?post_id=<?php echo $post_id;?>">
	<?php echo "  Post Title : ".$post_title."  ";                                       // SHOW PENDING POSTS FOR USER
?>
</a>
<?php
echo "  Category : ".$post_type."  Price : ".$price;
echo " Date : ".$post_date;
?>
<br>
<?php
 echo $post_content;
 ?>

</div>

<?php
}



?>