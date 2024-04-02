
<?php
  $con=mysqli_connect("localhost","root","") or die("connection failed:");
mysqli_select_db($con,"book_commerce") or die("bgbdfsfd");
?>
<!DOCTYPE html>
<html>
<head>
	<title>All Mobiles</title>
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="icon" href="../img/home-img/icontop.png">
</head>
<body>
	<a href="../index.php"><h4 class="text-primary"><--Back</h4></a>
<h1 class="text-primary" align="center"><b>All Books</b></h1>
<div class="container-fluid">
<div class="row justify-content-center">
<div class="bg-light mt-2 rounded pb-3">
<div class="form-inline">
<label for="search" class="font-weight-bold lead text-dark">Search Books</label>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="search" id="search_text" class="form-control form-control-lg rounded-0 border-primary" placeholder="Search....!!!">
</div>
</div>
</div>
</div>
	<?php 
	$query="SELECT * FROM products_data ORDER BY id DESC";
	$result=mysqli_query($con,$query);
	if($result->num_rows>0)
	{
		echo "<table border='5' id='ordertable'>";
		echo "<tr>";
		echo "<th>Book Name</th>";
		echo "<th>Author</th>";
		echo "<th>Published By</th>";
		echo "<th>Stock</th>";
		echo "<th>Price</th>";
		echo "<th>Cover</th>";
		echo "<th>Buy</th>";
		echo "</tr>";

		while ($row = $result->fetch_assoc()) {
			echo "<tr>";
			echo "<td>".$row['name']."</th>";
			echo "<td>".$row['brand']."</th>";
			echo "<td>".$row['color']."</th>";
			echo "<td>".$row['stock']."</th>";
			echo "<td>".$row['your_price']."$</th>";
			echo "<td><img src='$row[img]' id='mobimg'/></th>";
			echo "<td><a href=".$row['amz_link']." target='_blank'>Buy Now</a></th>";
			echo "</tr>";
			}
	echo "</table>";
	}
		else
		{
			echo "<h3>There Is No Mobile</h3>";
		}
		$con->close();
	?>
	<script src="../css/jquery.js"></script>
<script src="../css/bootstrap.js"></script>
 <script type="text/javascript">
    	$(document).ready(function(){
    		$("#search_text").keyup(function()
    		{
    			var search = $(this).val();
    			$.ajax({
    				url:'searchaction.php',
    				method:'post',
    				data:{query:search},
    				success:function(response)
    				{
    					$("#ordertable").html(response);
    				}
    			});
    		});
    	});
    </script>
</body>
</html>
<style>
	#ordertable{
    table-layout: fixed;
	margin:auto !important;
}
#mobimg
{
	width: 130px;
	height: 100px;
}
</style>