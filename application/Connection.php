<?php 
	class Connection{
		public static function getInstance(){
			$conn = new PDO("mysql:hostname=localhost;dbname=project","root","");
			$conn->exec("set names utf8");
			$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
			return $conn;
		}
	}
 ?>