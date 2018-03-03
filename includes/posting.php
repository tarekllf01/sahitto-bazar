<?php
$post_date=date("D-M-Y");
$post_title=$_POST["title"];
$post_type=$_POST["type"];
$post_content=$_POST["post"];
$person_name=$_POST["name"];
$person_email=$_POST["email"];
$person_phone=$_POST["phone"];
$price=$_POST["price"];

if($post_title=="" or $post_type=="" or $post_content=="" or $person_name=="" or $person_email=="" or  (int)$person_phone<1000000000 or $price=="" ){
 echo "<script> alert('please fill all inputs correctly!') </script>";
}
else {
include("connect_database.php");
$query=mysql_query("INSERT INTO post(post_date,post_title,post_type,post_content,person_name,person_email,person_phone,price) VALUES ('$post_date','$post_title','$post_type','$post_content','$person_name','$person_email','$person_phone','$price')");

if(!$query){
	echo "could not saved into the database";
}
else{
echo "<script> alert('POST SAVED SUCCESS FULLY! <br> IT WILL BE PUBLISHED AFTER ADMIN,S CHECKING!! GO BACK') </script>";
}
}


?>