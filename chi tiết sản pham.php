<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
 <div class="content">

 	<?php 
 	$connect = mysqli_connect('3.132.234.157', 'minhtuan', 'jinx0902', 'tuan02');
 		$id = $_GET["id"];
 		$sql ="SELECT * FROM product WHERE songid = {$id}";
 		$result = mysqli_query($connect, $sql);
 		while($row = mysqli_fetch_array($result)){
 			?>

 			<div style="float:left">
 				<!-- hiển thị ảnh sản phẩm -->
 				<img src="Img/<?php echo $row['songimg'] ?>" width="400px" height="400px">
		 	</div>
		    <div>
		    	<h2> Tên sản phẩm: <?php echo $row['product_name'] ?></h2>
		    	<button> Add to Cart</button>
		    </div>
    <?php
 		}
 	?>
 	
 </div>
</body>
</html>