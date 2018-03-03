<div id="footer">
<div id="next_button_container">
<div id="next_button">  
<li><a href="index.php">page:1</a></li>
</div>
<?php                                                               // adding next button in footer section from line 18

$query=mysql_query("SELECT * FROM post WHERE activated='1' order by 1 DESC");
$row=mysql_num_rows($query);
for($n=1;$n<=$row;$n++){
if(($n%$post_perpage)==0 && ($n<$row)){
?>
<div id="next_button">  
<li><a href="index.php?pid=<?php echo(int)($n/$post_perpage)+1;?>">page:<?php echo(int)($n/$post_perpage)+1;?></a></li>

</div>	

<?php }} ?>
</div>
</div>