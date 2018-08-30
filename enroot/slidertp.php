<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css" />
</head>
<body>
<?php
        include_once("navbar.php");
        ?>
        <br><b><br><br>
<?php

$dbservername = "localhost";
$dbusername = "root";
$dbpassword = "root";
$dbname="enroot";
// Create connection
$conn = mysqli_connect($dbservername, $dbusername, $dbpassword,$dbname);
$sql = "select * from events where status='".$eventst."'";
$result=$conn->query($sql);
?>
<div class="slideshow-container">

<?php
    while ($row=mysqli_fetch_assoc($result))
    {
        $pathx ="media/eventimg/";
        $file = $row['images'];
        $name = $row['name'];
        $date = $row['date'];
        $place = $row['place'];
        $time = $row['time'];
        $organiser = $row['organiser'];
        $fees = $row['fees'];
        $text = $row['text'];
        echo '<div class="mySlides">';
        echo '<img src="'.$pathx.$file.'" id="eventimg">';    
        echo '<div class="overlay">';
        echo $name;
        echo'<br>Date:'.$date;
        echo'<br>Time:'.$time;
        echo'<br>Place:'.$place;
        echo'<br><p>'.$text;
        echo '</p></div>';
        echo '</div>';

    }
    
    
  ?>
  
  



<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<br>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html> 
