<?php 
	trait ProductsModel{
		public function modelRead($recordPerPage){
			$category_id =isset($_GET["id"]) ? $_GET["id"] : 0;
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			//---
			$sqlOrder = "";
			$order = isset($_GET["order"]) ? $_GET["order"] : "";
			switch ($order) {
				case 'priceAsc':
					$sqlOrder = "order by price asc";
					break;
				case 'priceDesc':
					$sqlOrder = "order by price desc";
					break;
				case 'nameAsc':
					$sqlOrder = "order by name asc";
					break;
				case 'nameDesc':
					$sqlOrder = "order by name desc";
					break;
				default:
					$sqlOrder = "order by id desc";
					break;
			}
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where category_id = $category_id $sqlOrder limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$category_id =isset($_GET["id"]) ? $_GET["id"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where category_id = $category_id");
			return $query->rowCount();
		}
		public function modelGetCategory($category_id){			
			$conn = Connection::getInstance();
			$query = $conn->query("select * from categories where id = $category_id");
			return $query->fetch();
		}
		public function modelGetProduct($id){			
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where id = $id");
			return $query->fetch();
		}
		public function modelRating(){
			$id =isset($_GET["id"]) ? $_GET["id"] : 0;
			$star =isset($_GET["star"]) ? $_GET["star"] : 0;
			if($star > 0 && $id > 0){
				$conn = Connection::getInstance();
				$conn->query("insert into rating(product_id,star) values($id,$star)");
			}
		}
		public function modelGetStar($product_id, $star){
			$conn = Connection::getInstance();
			$query = $conn->query("select id from rating where product_id = $product_id and star = $star");
			return $query->rowCount();
		}
	}
 ?>