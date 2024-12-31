<?php 
	trait SlidesModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from slide order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from slide");
			return $query->rowCount();
		}
		public function modelGetRecord(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->prepare("select * from slide where id=:var_id");
			$query->execute(["var_id"=>$id]);
			return $query->fetch();
		}
		public function modelUpdate(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$name = $_POST["name"];			
			$conn = Connection::getInstance();
			$query = $conn->prepare("update slide set name=:var_name where id=:var_id");
			$query->execute(["var_id"=>$id,"var_name"=>$name]);
			//---
			$photo = "";
			if($_FILES["photo"]["name"] != ""){
				//---
				$oldPhoto = $conn->query("select photo from slide where id=$id");
				if($oldPhoto->rowCount() > 0){
					$record = $oldPhoto->fetch();
					if($record->photo != "" && file_exists("../assets/upload/slides/".$record->photo))
						unlink("../assets/upload/slides/".$record->photo);
				}
				//---
				$photo = time()."_".$_FILES["photo"]["name"];
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/slides/$photo");
				$query = $conn->prepare("update slide set photo=:var_photo where id=$id");
				$query->execute(array("var_photo"=>$photo));
			}
		}
		public function modelCreate(){
			$name = $_POST["name"];
			$conn = Connection::getInstance();
			$photo = "";
			if($_FILES["photo"]["name"] != ""){
				$photo = time()."_".$_FILES["photo"]["name"];
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/slides/$photo");
			}
			$query = $conn->prepare("insert into slide set name=:var_name,photo=:var_photo");
			$query->execute(["var_name"=>$name,"var_photo"=>$photo]);
			
		}
		
		public function modelDelete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			//---
			$oldPhoto = $conn->query("select photo from slide where id=$id");
			if($oldPhoto->rowCount() > 0){
				$record = $oldPhoto->fetch();
				if($record->photo != "" && file_exists("../assets/upload/slides/".$record->photo))
					unlink("../assets/upload/slide/".$record->photo);
			}
			//---
			$query = $conn->prepare("delete from slide where id=:var_id");
			$query->execute(["var_id"=>$id]);
		}
	}
 ?>