<?php 
	trait LoginModel{
		public function modelLogin(){
			$email = $_POST['email'];
			$password = $_POST['password'];
			$password = md5($password);
			$conn = Connection::getInstance();
			$query = $conn->prepare("select email from users where email=:var_email and password = :var_password");
			$query->execute(["var_email"=>$email,"var_password"=>$password]);
			if($query->rowCount() > 0){
				$_SESSION['email'] = $email;
				header("location:index.php");
			}else
			header("location:index.php?controller=login");
		}
		
	}
 ?>