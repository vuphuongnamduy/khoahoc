<?php 
	include "models/UsersModel.php";
	class UsersController extends Controller{
		use UsersModel;
		public function index(){
			$recordPerPage = 4;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("UsersView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function update(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetRecord();
			$action = "index.php?controller=users&action=updatePost&id=$id";
			$this->loadView("UsersFormView.php",["record"=>$record,"action"=>$action]);
		}
		public function updatePost(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelUpdate();
			header("location:index.php?controller=users");
		}
		public function create(){
			$action = "index.php?controller=users&action=createPost";
			$this->loadView("UsersFormView.php",["action"=>$action]);
		}
		public function createPost(){
			$this->modelCreate();
		}
		public function delete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelDelete();
			header("location:index.php?controller=users");
		}
	}
 ?>