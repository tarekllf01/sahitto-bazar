<?php
if($home!=1){
$category="";
$loaded=$low+$high;
if(isset($_GET['cat'])){               // getting category and show on category 
$category=(string)$_GET['cat'];
$category=mysql_real_escape_string($category);
$q=mysql_query("SELECT * FROM  post WHERE activated='1' AND post_type='$category'");
$total=mysql_num_rows($q);
$query=mysql_query("SELECT * FROM post WHERE activated='1' AND post_type='$category' order by 1 DESC LIMIT $low,$high ");

}
else{
$q=mysql_query("SELECT * FROM  post WHERE activated='1' ");
$total=mysql_num_rows($q);
$query=mysql_query("SELECT * FROM post WHERE activated='1' order by 1 DESC LIMIT $low,$high");
}


?>
<div id="footer">
<div id="next_button_container">
 

<?php
if((int)($low/20)>0 &&($category=="")){										// All category
?>
<div id="next_button">
<li>
<a href="index.php?pid=<?php echo(int)($low/$post_perpage);?>"> Prev </a></li>
</div>
<?php
}

if((int)($low/20)>1 &&($category!="")){
?>
<div id="next_button">  
<li>
<a href="index.php?<?php echo "cat=".$category."&&pid=".(int)($low/$post_perpage);?>"> Prev </a></li>
</div>
<?php
}

if(($loaded<$total) && $category==""){										// All category
?>
<div id="next_button">  
<li>
<a href="index.php?pid=<?php echo(int)($loaded/$post_perpage)+1;?>"> Next </a></li>

</div>
<?php
}
if(($loaded<$total) && $category!=""){ 											// on a single category!!
?>
<div id="next_button">  
<li>
<a href="index.php?<?php echo "cat=".$category."&&pid=".(int)($loaded/$post_perpage)+1;?>"> Next </a></li>
</div>
<?php
}

?>

<?php                                                               // adding next button in footer section from line 18
$row=$total;
for($n=1;$n<=$row;$n++){
if(($n%$post_perpage)==0 && ($n<$row)){

if($category==""){
	
?>
<div id="next_button">  
<a href="index.php?pid=<?php echo(int)($n/$post_perpage)+1;?>">page-:<?php echo(int)($n/$post_perpage)+1;?></a>

</div>	
<?php
}
else{
?>
<div id="next_button">  
<li><a href="index.php?cat=<?php echo $category."&&pid=".(int)($n/$post_perpage)+1;?>">page:<?php echo(int)($n/$post_perpage)+1;?></a></li>

</div>

<?php }}}
$home=NULL;
 } ?>
</div>
</div>