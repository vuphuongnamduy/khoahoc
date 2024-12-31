<?php 
	include "models/CategoriesModel.php";
	class CategoriesController extends Controller{
		use CategoriesModel;
		public function index(){
			$recordPerPage = 20;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("CategoriesView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function update(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetRecord();
			$action = "index.php?controller=categories&action=updatePost&id=$id";
			$this->loadView("CategoriesFormView.php",["record"=>$record,"action"=>$action]);
		}
		public function updatePost(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelUpdate();
			header("location:index.php?controller=categories");
		}
		public function create(){
			$action = "index.php?controller=categories&action=createPost";
			$this->loadView("CategoriesFormView.php",["action"=>$action]);
		}
		public function createPost(){
			$this->modelCreate();
			header("location:index.php?controller=categories");
		}
		public function delete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelDelete();
			header("location:index.php?controller=categories");
		}
	}
 ?>