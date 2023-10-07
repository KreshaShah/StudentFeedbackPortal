<?php
session_start();
include "dbconnect.php"; 
// $c_count=course count for this faculty
$c_count=$_SESSION['courses'];

$codeArray=[]; // Array of course codes
for($i=0;$i<$c_count;$i++)
{
  $codeArray[$i]=$_SESSION['course'.$i];
  echo $codeArray[$i];
}


$ratingArray = []; 
for($i=0;$i<$c_count;$i++)
{
  $cbox='rating'.$i;
  $ratingArray[$i]=$_POST[$cbox];
}  
// Check if the form is submitted
if (!empty($_POST)) {
echo "hello";	
//$course1 = $_POST['rating0'];
//$course2 = $_POST['rating1'];

for($i=0;$i<$c_count;$i++)
{
foreach( $ratingArray[$i] as $key => $val ) {
  print "The rating is ".$val;
}

}


} // end of form submit if
?>