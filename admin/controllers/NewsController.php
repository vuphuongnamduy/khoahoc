<?php 
	include "models/NewsModel.php";
	class NewsController extends Controller{
		use NewsModel;
		public function index(){
			$recordPerPage = 20;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("NewsView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function update(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetRecord();
			$action = "index.php?controller=news&action=updatePost&id=$id";
			$this->loadView("NewsFormView.php",["record"=>$record,"action"=>$action]);
		}
		public function updatePost(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelUpdate();
			header("location:index.php?controller=news");
		}
		public function create(){
			$action = "index.php?controller=news&action=createPost";
			$this->loadView("NewsFormView.php",["action"=>$action]);
		}
		public function createPost(){
			$this->modelCreate();
			header("location:index.php?controller=news");
		}
		public function delete(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$this->modelDelete();
			header("location:index.php?controller=news");
		}
	}
 ?>