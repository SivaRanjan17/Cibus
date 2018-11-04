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

			$sql = "Select distinct(RID) from Cart";

			$result = $conn->query($sql);

			$row = $result->fetch_assoc();
			

			$resid = $row["RID"];

			$OID = mt_rand(10000, 99999);
			
			$username = "msivaranjan@hotmail.com";

			$sql = "INSERT INTO orders values('$OID', '$username', '$resid')";

			$conn->query($sql);
	
			$sql = "select * from Cart";

			$result = $conn->query($sql);

			if ($result->num_rows > 0)
			{
				while ($row = $result->fetch_assoc())
				{
					$name = $row["Name"];
					$pri = $row["price"];
					$quant = $row["Quantity"];
					$sql = "INSERT INTO order_details values ('$OID', '$resid', '$name', '$quant', '$pri')";
					$conn->query($sql);
				}
			}

			$sql = "TRUNCATE TABLE Cart";

			$conn->query($sql);



			header("Location: ../OrderConfirmed.php");

			?>