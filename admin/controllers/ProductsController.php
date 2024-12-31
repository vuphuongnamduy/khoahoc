<?php 
	include "models/ProductsModel.php";
	class ProductsController extends Controller{
		use ProductsModel;
		public function index(){
			$recordPerPage = 6;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("ProductsView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function update(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetRecord();
			$action = "index.php?controller=products&action=updatePost&id=$id";
			$this->loadView("ProductsFormView.php",["record"=>$record,"action"=>$action]);
		}
		public function updatePost(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelUpdate();
			header("location:index.php?controller=products");
		}
		public function create(){
			$action = "index.php?controller=products&action=createPost";
			$this->loadView("ProductsFormView.php",["action"=>$action]);
		}
		public function createPost(){
			$this->modelCreate();
			header("location:index.php?controller=products");
		}
		public function delete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelDelete();
			header("location:index.php?controller=products");
		}
	}
 ?>