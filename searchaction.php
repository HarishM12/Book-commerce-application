<?php
  $con=mysqli_connect("localhost","root","") or die("connection failed:");
mysqli_select_db($con,"book_commerce") or die("bgbdfsfd");
$output='';
if(isset($_POST['query']))
{
	$search=$_POST['query']; 
	$stmt=$con->prepare("SELECT * FROM products_data where id LIKE CONCAT('%',?,'%') OR name LIKE CONCAT('%',?,'%')");
	$stmt->bind_param("ss",$search,$search);
}
else
{
	$stmt=$con->prepare("SELECT * FROM products_data");
}
$stmt->execute();
$result=$stmt->get_result();
if($result->num_rows>0)
{
	$output="
		echo '<tr>';
		echo '<th>Book Name</th>';
		echo '<th>Author</th>';
		echo '<th>Published By</th>';
		echo '<th>Stock</th>';
		echo '<th>Price</th>';
		echo '<th>Cover</th>';
		echo '<th>Buy</th>';
		echo '</tr>';
		";
		while ($row=$result->fetch_assoc()) {
			$output .="
			 <tr>;
			 <td>$row[name]</th>
			 <td>$row[brand]</th>
			 <td>$row[color]</th>
			 <td>$row[stock]</th>
			<td>$row[your_price]</th>
			<td><img src='$row[img]' id='mobimg'/></th>
			<td><a href=".$row['amz_link']." target='_blank'>Buy Now</a></th>
			 </tr>;
			";
		}
		echo $output;

}
else
{
	echo"<h3>No Books Found</h3>";
}
?>
<style>
	#mobimg
{
	width: 130px;
	height: 100px;
}
</style>