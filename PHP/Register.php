<html>
	<head>
		<meta http-equiv="refresh" content="2;url=../index.html">
	</head>

	<body>
		<?php
		$uname = $_POST["uname"];
		$fname = $_POST["fname"];
		$lname = $_POST["lname"];
		$pw = $_POST["psw"];
		$address = $_POST["addr"];
		$locality = $_POST["locality"];
		$city = $_POST["city"];

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

		$sql = "INSERT INTO USERS VALUES('$uname', '$fname', '$lname', '$pw', '$address', '$locality', '$city')";

		if ($conn->query($sql) == false)
		{
			echo "You've already registered!".$conn->error;
		}
		?>
	</body>
</html> 