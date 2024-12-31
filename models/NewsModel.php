<?php 
	trait NewsModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from news order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from news");
			return $query->rowCount();
		}
		public function modelGetRecord(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->prepare("select * from news where id=:var_id");
			$query->execute(["var_id"=>$id]);
			return $query->fetch();
		}
		public function modelGetNew($id){			
			$conn = Connection::getInstance();
			$query = $conn->query("select * from news where id = $id");
			return $query->fetch();
		}
	}
 ?>