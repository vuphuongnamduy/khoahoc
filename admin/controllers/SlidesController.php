<?php 
	include "models/SlidesModel.php";
	class SlidesController extends Controller{
		use SlidesModel;
		public function index(){
			$recordPerPage = 20;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("SlidesView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function update(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetRecord();
			$action = "index.php?controller=slides&action=updatePost&id=$id";
			$this->loadView("SlidesFormView.php",["record"=>$record,"action"=>$action]);
		}
		public function updatePost(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelUpdate();
			header("location:index.php?controller=slides");
		}
		public function create(){
			$action = "index.php?controller=slides&action=createPost";
			$this->loadView("SlidesFormView.php",["action"=>$action]);
		}
		public function createPost(){
			$this->modelCreate();
			header("location:index.php?controller=slides");
		}
		public function delete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelDelete();
			header("location:index.php?controller=slides");
		}
	}
 ?>