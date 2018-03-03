<?php
session_start();
?>
<html>
<head>
<meta charset="UTF-8">
	<title>Sahitto Bazar </title>
	
	<link rel="stylesheet" href="style.css" media="all">
</head>
<body>
<div> <?php include("includes/header.php");?> </div>

<div> <?php include("includes/navigation.php");?> </div>

<div> <?php include("includes/main_content.php");?> </div>

<div> <?php include("includes/sidebar.php");?> </div>

<div id="footer">          


<?php include("includes/nextbutton.php");?>
<?php include("includes/footer.php");?> 
</div>







</body>

</html>