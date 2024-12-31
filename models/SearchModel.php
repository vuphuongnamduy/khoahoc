<?php
    trait SearchModel {
        public function modelRead($recordPerPage){
            $key= isset($_GET["key"]) ? $_GET["key"] : 0;
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where name like '%$key%' order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
            $key= isset($_GET["key"]) ? $_GET["key"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where name like '%$key%'");
			return $query->rowCount();
		}
		public function modelReadSearchPrice($recordPerPage){
			$fromPrice = isset($_GET["fromPrice"]) ? $_GET["fromPrice"] : 0;
			$toPrice = isset($_GET["toPrice"]) ? $_GET["toPrice"] : 0;
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where price >= $fromPrice and price <= $toPrice order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecordSearchPrice(){
			$fromPrice = isset($_GET["fromPrice"]) ? $_GET["fromPrice"] : 0;
			$toPrice = isset($_GET["toPrice"]) ? $_GET["toPrice"] : 0;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where price >= $fromPrice and price <= $toPrice");
			return $query->rowCount();
		}
        public function modelAjaxSearch() {
            $key = isset($_GET["key"]) ? $_GET["key"] : "";
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where name like '%$key%'");
			return $query->fetchAll();
		}
    }
?>