<?php
require_once('phpwork/component.php');
$con=mysqli_connect("localhost","root","") or die("connection failed:");
mysqli_select_db($con,"book_commerce") or die("bgbdfsfd");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title -->
    <title>Book Commerce</title>

    <!-- Favicon -->
    <link rel="icon" href="img/home-img/icontop.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <!-- Important Owl stylesheet -->
<link rel="stylesheet" href="css/owl.carousel.css">
    <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
<div class="col-lg-12">
       <h1 class="text-secondary book-heading"><b>Book Management System:</b></h1>
       <a href="admin-panel/allbooks.php" class="search-btn-a"><button type="button" class="btn btn-primary search-book-btn">Search Books</button></a>
  <div class="row" id="showres">
        <!-- ##### Product 1 start ##### -->
  <?php
  $query="SELECT * FROM products_data ORDER BY id DESC LIMIT 8";
  $result=mysqli_query($con,$query);
  if($result->num_rows>0)
  {
while($row=mysqli_fetch_assoc($result)) {
    mobcomponent($row['name'],$row['brand'],$row['color'],$row['andriod'],$row['front_camera'],$row['back_camera'],$row['screen_size'],$row['storage'],$row['ram'],$row['stock'],$row['your_price'],$row['img'],$row['id']);
}
}
else
{
  echo "error";
       
}
?>
    </div>
</div>
</div>
</div>
    <!-- ##### Footer Area Start ##### -->
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

<script src="css/owl.carousel.js"></script>
<script>
	var owl = $('.owl-carousel');
owl.owlCarousel({
    items:5,
    margin:10,
    loop:true,
    autoplay:true,
    autoplayTimeout:1000,

});
</script>



</body>
</html>
<style>
.book-heading
{
  text-align:center;
  margin-bottom:40px;
}
.search-book-btn
{
  margin-bottom:50px;
}
.search-btn-a
{
  display: flex;
  justify-content:center;
}
</style>