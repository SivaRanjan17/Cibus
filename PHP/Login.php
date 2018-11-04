<html>
	<body>
		<?php 

			$uname = $_POST["uname"];
			$password1 = $_POST["psw"];

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

			$sql = "SELECT * FROM USERS";

			$result = $conn->query($sql);

			if ($result->num_rows > 0)
			{
				while ($row = $result->fetch_assoc())
				{
					$tuname = $row["USERNAME"];
					$tpass = $row["Password"];

					if ($uname == $tuname)
					{
						if ($password1 == $tpass)
						{
							header ('Location: ../index.html');
						}

						else
						{
							echo "Invalid Password";
						}
					}

					else
					{
						echo "Invalid Username";
					}
				}
			}
			?>

		</body>
</html>

