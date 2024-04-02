<?php
$con=mysqli_connect("localhost","root","") or die("connection failed:");
mysqli_select_db($con,"book_commerce") or die("bgbdfsfd");

if (isset($_GET['book'])) {
  $bookName = $_GET['book'];
  $query = "SELECT * FROM products_data WHERE name = '$bookName'";
  $result = mysqli_query($con, $query);
  if ($result && mysqli_num_rows($result) > 0) {
    // Fetch the book data
    $bookData = mysqli_fetch_assoc($result);

    $booknamesum = $bookData['name'] ;
    $bookauthorsum = $bookData['brand'];
    $bookpricesum = $bookData['your_price'];
    $bookpubsum = $bookData['color'] ;
    $booklinksum = $bookData['amz_link'] ;
    $bookimgsum = $bookData['img'] ;
} else {
    echo "Book not found.";
}

// Free the result set
mysqli_free_result($result);
}

// Close the database connection
mysqli_close($con);
?>
<!DOCTYPE html>
<html>
<head>
  <title>Book Product Page</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <style>
    body {
      padding: 20px;
    }
    .product {
      margin-bottom: 30px;
    }
    .product img {
      width: 100%;
      max-height: 400px;
      object-fit: cover;
      border-radius: 5px;
    }
    .product h4 {
      margin-top: 10px;
      margin-bottom: 5px;
    }
    .product p {
      margin-bottom: 10px;
    }
    .product .price {
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <div class="product">
          <img src='../admin-panel/<?php echo $bookimgsum; ?>' alt="Book Cover">
          <h4><?php echo $booknamesum; ?></h4>
          <p><?php echo $bookauthorsum; ?></p>
          <p class="price">Price: <?php echo $bookpricesum; ?>$</p>
          <p class="price">Publisher: <?php echo $bookpubsum; ?></p>
          <a href='<?php echo $booklinksum; ?>' target="_blank"><button class="btn btn-primary">Buy Now</button></a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
