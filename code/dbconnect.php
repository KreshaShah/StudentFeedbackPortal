<?php

$db = mysqli_connect("localhost","root","","sbmp");

if(!$db)
{
    die("Connection failed: " . mysqli_connect_error());
}
else
  //echo "Connection Established Successfully!!!"  ;
?>