<?php 
	trait OrdersModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orders order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orders");
			return $query->rowCount();
		}
		public function modelGetCustomer($customer_id){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from customers where id=$customer_id");
			return $query->fetch();
		}
		public function modelOrdersDetail($order_id){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orderdetails where order_id=$order_id");
			return $query->fetchAll();
		}
		public function modelGetProduct($product_id){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where id=$product_id");
			return $query->fetch();
		}
        public function modelDelivery($id) {
			$conn = Connection::getInstance();
            $query = $conn->query("update orders set status = 1 where id=$id");
        }
	}
 ?>