<?php 
	trait OrderModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET["p"])&& $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			$from = $page * $recordPerPage;
			$customer_id = $_SESSION['customer_id'];
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orders where customer_id = $customer_id order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orders");
			return $query->rowCount();
		}
		public function modelGetCustomer($customer_id) {
			$conn = Connection::getInstance();
			$query = $conn->query("select name, email, address, phone from customers where id = $customer_id");
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
        public function modelDelivery1($id) {
			$conn = Connection::getInstance();
            $query = $conn->query("update orders set hot = 1 where id=$id");
        }
	}
 ?>