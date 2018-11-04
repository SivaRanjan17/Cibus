<?php
	
			$product = $_GET["prod"];
			$server = "localhost";
			$username = "17pw33";
			$password = "12345";

			echo $product;

			$conn = new mysqli($server, $username, $password);

			if ($conn->connect_error)
			{
				echo "fail";
			}
			$sql = "USE 17pw33";

			if ($conn->query($sql) == False)
			{
				echo "Database fail".$conn->error;
			}

			$sql = "DELETE FROM CART WHERE Name = '$product'";

			$result = $conn->query($sql);

			header("Location: ../checkout.php");

		?>