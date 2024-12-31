<?php 
	trait UsersModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from users order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from users");
			return $query->rowCount();
		}
		public function modelGetRecord(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->prepare("select * from users where id=:var_id");
			$query->execute(["var_id"=>$id]);
			return $query->fetch();
		}
		public function modelUpdate(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$name = $_POST["name"];
			$password = $_POST["password"];
			$conn = Connection::getInstance();
			$query = $conn->prepare("update users set name=:var_name where id=:var_id");
			$query->execute(["var_id"=>$id,"var_name"=>$name]);
			if($password != ""){
				$password = md5($password);
				$query = $conn->prepare("update users set password=:var_password where id=:var_id");
				$query->execute(["var_id"=>$id,"var_password"=>$password]);
			}

		}
		public function modelCreate(){
			$name = $_POST["name"];
			$email = $_POST["email"];
			$password = $_POST["password"];
			$password = md5($password);
			$conn = Connection::getInstance();
			$queryEmail = $conn->prepare("select email from users where email=:var_email");
			$queryEmail->execute(["var_email"=>$email]);
			if($queryEmail->rowCount() == 0){
				$query = $conn->prepare("insert into users set name=:var_name,email=:var_email,password=:var_password");
				$query->execute(["var_name"=>$name,"var_email"=>$email,"var_password"=>$password]);	
				header("location:index.php?controller=users");
			}else{
				header("location:index.php?controller=users&action=create&notify=email-exists");	
			}
		}
		public function modelDelete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->prepare("delete from users where id=:var_id");
			$query->execute(["var_id"=>$id]);
		}
	}
 ?>