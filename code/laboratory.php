<!DOCTYPE html>
<html>
<head>
  <style>
  table,th,td{
  column-count: 2;
  column-gap: 3px;
  border: 1px solid black;
  <!--border-collapse: collapse ;-->
  
}
</style>
  <title>PHP Retrieve Data from MySQL using Drop Down Menu</title>
</head>
<body>
<h1>Laboratory Feedback Form</h1>
<form action="fbprocess.php" method="post">
 <!-- 
  <select>
    <option disabled selected>-- Select City --</option>
  
   <label>Faculty Name: Manish Solanki</label>
   <label>Course Name: Programming in Java</label>
   <label>Open Source Technology</label> </br>
 --> 

    <?php
        session_start();
        include "dbconnect.php";  // Using database connection file here
        #$fname="Pankaj Rathod";
        #$sem="III";
        #$year=2021;
        #$program="IT";'''
        #$_SESSION['fname']=$fname;
        #$_SESSION['program']=$program;
        #$_SESSION['sem']=$sem;
        #$_SESSION['year']=$year;

        // faculty courses query
      #  $query="select * from sem_courses where sem='$sem' and year=$year and faculty='$fname'";
       //$crecords= number of courses a faculty teaches in one sem. 
      # $crecords = mysqli_query($db, $query) or die( mysqli_error($db)); 
       #$num_rows = mysqli_num_rows($crecords);
       echo "<table>";
       echo "<tr>";
       echo "<th>PARTICULARS</th>";
       echo "<th>Rating</th>";
      
       echo "</tr>";


       #echo "<tr>";
       #echo "<td>$num_rows</td>";
       #$_SESSION['courses']=$num_rows;
       #// Displaying Faculty Name and courses on the top 

      #echo "<td><label>Faculty Name: $fname</label></td>";

       #$ccount=0;
       #while($data = mysqli_fetch_array($crecords))
       #{
        #$course='course'.$ccount;
        #$_SESSION[$course]=$data['code'];
        #echo "<td><label>".$data['code']."</label></td>";
        #echo "</tr>";
        #$ccount++;
       #}
       // To point to the beginning of dataset
       # mysqli_data_seek($crecords, 0);
        #echo "<br/>";

       //$course_count=0;     
       // Faculty Feedback Questions Query
       $fq_query="select * from fb_questions where qtype='L'";
       $fqs = mysqli_query($db, $fq_query) or die( mysqli_error($db));
        echo "<tr>";
  while($q = mysqli_fetch_array($fqs))
    {
      
       echo "<td>".$q['question']."</td>";   
      #  $course_count=0;     
      # while($data = mysqli_fetch_array($crecords))
      # { 
      #   
      #   $cb_name="rating".($course_count%$num_rows); 
      #   $course_count++;
    
      echo "<td>";
      ?>
         <select id="course" name=<?php echo $cb_name.'[]';?>>
           <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
          </select>
      <?php
      echo "</td>";
      
     ?>
    <?php    
     echo "</tr>";
      } // end of courses while
      #echo "</br>";
      
      // To point to the beginning of dataset
     # mysqli_data_seek($crecords, 0);
    // end of questions while
    
      echo "</table>";
      echo "<br>";
      echo "<br>";
      echo "<br>";
     ?> 

   <input type="submit" name="submit" value="submit">
</form>

<?php mysqli_close($db);  // close connection ?>

</body>
</html>