<?php 
	include "models/ProductsModel.php";
	class ProductsController extends Controller{
		use ProductsModel;
		public function category(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$recordPerPage = 8;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("CategoryProductsView.php",["data"=>$data,"numPage"=>$numPage, "id"=>$id]);
		}
		public function detail(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetProduct($id);	
			$this->loadView("DetailProductsView.php",["record"=>$record,"id"=>$id]);
		}
		public function rating(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelRating();
			header("location:index.php?controller=products&action=detail&id=$id");
		}
		public function modelSameProduct(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products order by id desc limit 5,8");
			return $query->fetchAll();
		}
		public function modelSeenProduct(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products order by id desc limit 12,8");
			return $query->fetchAll();
		}
	}
 ?>