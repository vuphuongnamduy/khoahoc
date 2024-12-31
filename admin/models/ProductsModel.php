<?php 
	trait ProductsModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products");
			return $query->rowCount();
		}
		public function modelGetRecord(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->prepare("select * from products where id=:var_id");
			$query->execute(["var_id"=>$id]);
			return $query->fetch();
		}
		public function modelUpdate(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$name = $_POST["name"];
			$author = $_POST["author"];
			$description = $_POST["description"];
			$content = $_POST["content"];
			$hot = isset($_POST["hot"]) ? 1 : 0;	
			$price = $_POST["price"];	
			$discount = $_POST["discount"];	
			$category_id = $_POST["category_id"];			
			$conn = Connection::getInstance();
			$query = $conn->prepare("update products set name=:var_name,author=:var_author,description=:var_description,content=:var_content,hot=:var_hot ,price=:var_price,discount=:var_discount,category_id=:var_category_id where id=:var_id");
			$query->execute(["var_id"=>$id,"var_name"=>$name,"var_author"=>$author,"var_description"=>$description,"var_content"=>$content,"var_hot"=>$hot,"var_price"=>$price,"var_discount"=>$discount,"var_category_id"=>$category_id]);
			$photo = "";
			if($_FILES["photo"]["name"] != ""){
				//---
				$oldPhoto = $conn->query("select photo from products where id=$id");
				if($oldPhoto->rowCount() > 0){
					$record = $oldPhoto->fetch();
					if($record->photo != "" && file_exists("../assets/upload/products/".$record->photo))
						unlink("../assets/upload/products/".$record->photo);
				}
				$photo = time()."_".$_FILES["photo"]["name"];
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/products/$photo");
				$query = $conn->prepare("update products set photo=:var_photo where id=$id");
				$query->execute(array("var_photo"=>$photo));
			}
		}
		public function modelCreate(){
			$name = $_POST["name"];
			$author = $_POST["author"];
			$description = $_POST["description"];
			$content = $_POST["content"];
			$hot = isset($_POST["hot"]) ? 1 : 0;	
			$price = $_POST["price"];	
			$discount = $_POST["discount"];	
			$category_id = $_POST["category_id"];
			//---
			$conn = Connection::getInstance();
			$photo = "";
			if($_FILES["photo"]["name"] != ""){
				$photo = time()."_".$_FILES["photo"]["name"];
				move_uploaded_file($_FILES["photo"]["tmp_name"],"../assets/upload/products/$photo");
			}
			$query = $conn->prepare("insert into products set name=:var_name,author=:var_author,description=:var_description,content=:var_content,hot=:var_hot,photo=:var_photo,price=:var_price,discount=:var_discount,category_id=:var_category_id");
			$query->execute(["var_name"=>$name,"var_author"=>$author,"var_description"=>$description,"var_content"=>$content,"var_hot"=>$hot,"var_photo"=>$photo,"var_price"=>$price,"var_discount"=>$discount,"var_category_id"=>$category_id]);
			
		}
		public function modelDelete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			//---
			$oldPhoto = $conn->query("select photo from products where id=$id");
			if($oldPhoto->rowCount() > 0){
				$record = $oldPhoto->fetch();
				if($record->photo != "" && file_exists("../assets/upload/products/".$record->photo))
					unlink("../assets/upload/products/".$record->photo);
			}
			//---
			$query = $conn->prepare("delete from products where id=:var_id");
			$query->execute(["var_id"=>$id]);
		}
		public function modelCategoriesSub($category_id){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from categories where parent_id = $category_id order by id desc");
			return $query->fetchAll();
		}
		public function modelCategories(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from categories where parent_id = 0 order by id desc");
			return $query->fetchAll();
		}
	}
 ?>