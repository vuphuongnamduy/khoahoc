<?php 
	include "models/OrdersModel.php";
	class OrdersController extends Controller{
		use OrdersModel;
		public function index(){
			$recordPerPage = 20;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("OrdersView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function detail(){
			$id = isset($_GET["id"]) ? $_GET["id"] : 0;
			$data = $this->modelOrdersDetail($id);
			$this->loadView("OrdersDetailView.php",["data"=>$data,"id"=>$id]);
		}
		public function delivery() {
			$id = isset($_GET["id"]) ? $_GET["id"] : 0;
			$this->modelDelivery($id);
			header("location:index.php?controller=orders");
		}
	}
 ?>