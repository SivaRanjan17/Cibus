<?php
	
			$server = "localhost";
			$username = "17pw33";
			$password = "12345";

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

			$sql = "TRUNCATE TABLE Cart";

			$conn->query($sql);



			header("Location: ../restaurants.html");
?>