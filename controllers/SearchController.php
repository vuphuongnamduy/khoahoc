<?php 
	include "models/SearchModel.php";
	class SearchController extends Controller{
		use SearchModel;
		public function name(){
            $key = isset($_GET["key"]) ? $_GET["key"] : "";
			$recordPerPage = 8;
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			$data = $this->modelRead($recordPerPage);
			$this->loadView("SearchNameView.php",["data"=>$data,"numPage"=>$numPage,"key"=>$key]);
		}
        public function price(){
			$fromPrice = isset($_GET["fromPrice"]) ? $_GET["fromPrice"] : 0;
			$toPrice = isset($_GET["toPrice"]) ? $_GET["toPrice"] : 0;
			$recordPerPage = 8;
			$numPage = ceil($this->modelTotalRecordSearchPrice()/$recordPerPage);
			$data = $this->modelReadSearchPrice($recordPerPage);
			$this->loadView("SearchPriceView.php",["data"=>$data,"numPage"=>$numPage,"fromPrice"=>$fromPrice,"toPrice"=>$toPrice]);
		}
        public function ajaxSearch(){
			$data = $this->modelAjaxSearch();
			$strResult = "";
			foreach($data as $rows){
				$strResult = $strResult."<li><img src='assets/upload/products/{$rows->photo}'> <a href='index.php?controller=products&action=detail&id={$rows->id}'>{$rows->name}</a></li>";
			}
			echo $strResult;
		}
    }
?>