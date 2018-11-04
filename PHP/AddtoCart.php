<?php
				$fname = $_GET["prod"];
				$trid = $_GET["res"];
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

				$sql = "Select price from menu where name = '$fname'";

				$result = $conn->query($sql);

				$row = $result->fetch_assoc();
			

				$pri = $row["price"];

				$sql = "INSERT INTO cart values ('$trid', '$fname', '$pri', 1)";

				$result = $conn->query($sql);

				header("Location: ../Selection.php");

				?>
