
<?php 
$home=NULL;
error_reporting(0);
if(isset($_GET['pid'])){
?>
<div id="main_content">
<?php


//connecting data base & selecting database
include("includes/connect_database.php");?>
<?php

$post_perpage=20;

$pid=$_GET["pid"];
$pid=(int)mysql_real_escape_string($pid);
$high=20;                         
$low=(($pid-1)*$post_perpage);

$category="";
if(isset($_GET['cat'])){               // getting category and show on category 
$category=$_GET["cat"];
$category=mysql_real_escape_string($category);

$query=mysql_query("SELECT * FROM post WHERE activated='1' AND post_type='$category' order by 1 DESC LIMIT $low,$high ");//2nd paramiter the number per page not from low

}

else{

$query=mysql_query("SELECT * FROM post WHERE activated='1' order by 1 DESC LIMIT $low,$high"); 

}


while($row=mysql_fetch_array($query)){
$post_id=$row['post_id'];
$post_date=$row['post_date'];
$post_title=$row['post_title'];
$post_type=$row['post_type'];
$post_content=substr($row['post_content'],0,120); //create sub string  of the whole content

$person_id=$row['person_id'];
$person_name=$row['person_name'];
$person_email=$row['person_email'];
$person_phone=$row['person_phone'];
$price=$row['price'];
?>
<a href="view.php?post_id=<?php echo $post_id;?>">
<div id="container">
<div id="publish"><h4 ><?php echo "Published by:  ".$person_name; ?> <br> Price:<?php echo $price; ?> TK <br><?php echo $post_date; ?></h4></div>

<div id="publish1">
<?php echo $post_content; ?>
</div>
<div id="title"><h3><?php echo $post_title;  ?></h3>
<h4>Category: <?php echo $post_type;?></h4></div>
</a>
</div>


<?php }
?>
</div> 
<?php
}
else{
?>
<div id="main_content1">
<div id="home_cat">
<center> <h3> Categories ( বিভাগ )  </h3></center></div>
<br>
<a href="index.php?pid=1&&cat=story"> 
<div id="home_cat_cont">
<div id="home_cat_name">
Story ( গল্প )  </div><br>
<center><img src="image/story.jpg" width="150px" height="120px"> </center><br>
Free and priced all story categorised posts.<br>
( গল্প জাতীয় সকল লেখা বিক্রির জন্য ও পাঠকদের  পড়ার জন্য। )

</div>
</a>


<a href="index.php?pid=1&&cat=poem"> 
<div id="home_cat_cont">
<div id="home_cat_name">
Poems ( কবিতা সমুহ  )  </div><br>
<center><img src="image/poem.jpg" width="150px" height="120px"></center><br>
All poems uploaded by user for sell or for free.<br>
( কবিতা  সমুহ বিনামুল্যে পড়ুন অথবা কিনুন আপনার বইয়ে পাবলিশ করুন  । )

</div>
</a>



<a href="index.php?pid=1&&cat=drama"> 
<div id="home_cat_cont">
<div id="home_cat_name">
Drama scripts ( নাটক   )  </div><br>
<center><img src="image/drama1.jpg" width="150px" height="120px"></center><br>
Drama scripts for a Drama thtis are priced<br>
(  এখানে  নাটকের  গল্পের সল্প বিবরন থাকবে পড়ুন  এবং আগ্রহী হলে লেখকের সাথে যোগাযোগ  করুন।  )

</div>
</a>


<a href="index.php?pid=1&&cat=lyrics"> 
<div id="home_cat_cont">
<div id="home_cat_name">
Lyrics ( গানের কথা )  </div><br>
<center><img src="image/lyrics.jpg" width="150px" height="120px"></center><br>
Lyrics for songs on movie,drama or video songs <br>
(  গানের কথা পছন্দ হলে , কম্পোজ করতে বা এলবাামে  এড  করতে লেখকের সাথে যোগাযোগ  করুন।  )

</div>
</a>


<a href="index.php?pid=1&&cat=drama"> 
<div id="home_cat_cont">
<div id="home_cat_name">
Jokes & Fun ( জোকস ও ফান)  </div><br>
<center><img src="image/jokes.jpg" width="150px" height="120px"></center><br>
All fun reserved here for visitors enjoy! <br>
( সংগ্রহকৃত  এবং ইউজার দের ধারা  পোস্ট করা সকল মজার জোকস  । পড়ুন  এবং হাসুন  )

</div>
</a>

<a href="index.php?pid=1 "> 
<div id="home_cat_cont">
<div id="home_cat_name">
All Categories ( সকল বিভাগ )  </div><br>
<center><img src="image/allc.jpg" width="150px" height="120px"></center><br>
The posts section containing All categories at same page <br>
( এখানে এক সাথে সকল বিভাগ বা ক্যাটাগরির  পোস্ট   প্রদরশন করুন।  )

</div>
</a>




<div id="home_cat1">
<center> <h3> Categorised Recent Post ( ক্যাটাগরি ভিত্তিক  সাম্প্রতিক  পোস্ট )  </h3></center>
</div>

<div id="home_cat_name1">
<center>
<a href="index.php?pid=1&&cat=story"><img src="image/story.jpg" height="50px" width="50px"><br>  Story ( গল্প )  </a></center> </div><br>
<div id="recent_cont">
<?php 
include("includes/connect_database.php");
$query=mysql_query("SELECT post_id,post_title FROM post WHERE post_type='story' AND activated='1' order by 1 DESC LIMIT 0,10 ");
while($row=mysql_fetch_array($query)){
$title=$row['post_title'];
$post_id=$row['post_id'];


?>

 <a href="view.php?post_id=<?php echo $post_id ; ?> ">
 <?php echo $title ;?></a>

 
 <?php
 }
 include("includes/disconnect.php");
 
 ?>
</div><br><br><br>



<div id="home_cat_name1">
<center>
<a href="index.php?pid=1&&cat=poem"><img src="image/poem.jpg" height="50px" width="50px"><br> POEMS ( কবিতা )  </a></center> </div><br>
<div id="recent_cont">
<?php 
include("includes/connect_database.php");
$query=mysql_query("SELECT post_id,post_title FROM post WHERE post_type='poem' AND activated='1' order by 1 DESC LIMIT 0,10 ");
while($row=mysql_fetch_array($query)){
$title=$row['post_title'];
$post_id=$row['post_id'];


?>

 <a href="view.php?post_id=<?php echo $post_id ; ?> ">
 <?php echo $title ;?></a>

 
 <?php
 }
 include("includes/disconnect.php");
 ?>
</div><br><br><br>


<div id="home_cat_name1">
<center>
<a href="index.php?pid=1&&cat=drama"> <img src="image/drama1.jpg" height="50px" width="50px"> <br> DRAMA SCRIPTS ( নাটকের স্ক্রিপ্ট  )  </a></center> </div><br>
<div id="recent_cont">
<?php 
include("includes/connect_database.php");
$query=mysql_query("SELECT post_id,post_title FROM post WHERE post_type='drama' AND activated='1' order by 1 DESC LIMIT 0,10 ");
while($row=mysql_fetch_array($query)){
$title=$row['post_title'];
$post_id=$row['post_id'];


?>

 <a href="view.php?post_id=<?php echo $post_id ; ?> ">
 <?php echo $title ;?></a>

 
 <?php
 }
 include("includes/disconnect.php");
 
 ?>
</div><br><br><br>



<div id="home_cat_name1">
<center>
<a href="index.php?pid=1&&cat=lyrics"> <img src="image/lyrics.jpg" height="50px" width="50px"> <br> LYRICS ( গানের কথা  )  </a></center> </div><br>
<div id="recent_cont">
<?php 
include("includes/connect_database.php");
$query=mysql_query("SELECT post_id,post_title FROM post WHERE post_type='lyrics' AND activated='1' order by 1 DESC LIMIT 0,10 ");
while($row=mysql_fetch_array($query)){
$title=$row['post_title'];
$post_id=$row['post_id'];


?>

 <a href="view.php?post_id=<?php echo $post_id ; ?> ">
 <?php echo $title ;?></a>

 
 <?php
 }
 include("includes/disconnect.php");
 
 ?>
</div><br><br><br>




<div id="home_cat_name1">
<center>
<a href="index.php?pid=1&&cat=jokes"> <img src="image/jokes.jpg" height="50px" width="50px"> <br> JOKES & FUN ( জোকস এবং ফান   )  </a></center> </div><br>
<div id="recent_cont">
<?php 
include("includes/connect_database.php");
$query=mysql_query("SELECT post_id,post_title FROM post WHERE post_type='jokes' AND activated='1' order by 1 DESC LIMIT 0,10 ");
while($row=mysql_fetch_array($query)){
$title=$row['post_title'];
$post_id=$row['post_id'];


?>

 <a href="view.php?post_id=<?php echo $post_id ; ?> ">
 <?php echo $title ;?></a>

 
 <?php
 }
 include("includes/disconnect.php");
 
 ?>
</div>

</div>

<?php
$home=1;
}?>









