
<?php

$sql=mysql_connect("localhost","ami","010101");

$bool=mysql_close($sql);
if(!$sql)
echo "<script>alert('could not disconnect')</script>";

?>

