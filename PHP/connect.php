<?php
	define('DB_SERVER', 'localhost');
	define('DB_USERNAME', '17pw33');
	define('DB_PASSWORD', '12345');
	define('DB_NAME', '17pw33');
	$db = new mysqli(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_NAME);
	if($db->connect_errno){
		die($db->connect_error);
	}
?>