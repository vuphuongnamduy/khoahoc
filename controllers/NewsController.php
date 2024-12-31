<?php 
	include "models/NewsModel.php";
	class NewsController extends Controller{
		use NewsModel;
		public function index(){
			$recordPerPage = 8;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("NewsView.php",["data"=>$data,"numPage"=>$numPage]);
		}
		public function detail(){
			$id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
			$record = $this->modelGetNew($id);	
			$this->loadView("NewsDetailView.php",["record"=>$record,"id"=>$id]);
		}
	}
 ?>