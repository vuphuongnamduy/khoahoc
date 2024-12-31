<?php
    include "models/CartModel.php";
    class CartController extends Controller {
        use CartModel;
        public function __construct() {
            if(isset($_SESSION["cart"]) == false) 
                $_SESSION['cart'] = array();
        }
        //hiển thị ds các sản phẩm trong giỏ hàng
        public function index() {
            $this->loadView("CartView.php");
        }
        //thêm sp vào giỏ hàng
        public function create() {
            $id = isset($_GET["id"]) ? $_GET["id"] : 0;
            $this->cartAdd($id);
            header("location:index.php?controller=cart");
        }
        //xóa sp khỏi giỏ hàng
        public function delete() {
            $id = isset($_GET["id"]) ? $_GET["id"] : 0;
            $this->cartDelete($id);
            header("location:index.php?controller=cart");
        }
        //xóa tất cả các sản phẩm khỏi giỏ hàng
        public function destroy() {
            $this->cartDestroy();
            header("location:index.php?controller=cart");
        }
        //cập nhật số lượng sản phẩm
        public function update() {
            foreach($_SESSION["cart"] as $product) {
                $name = "product_".$product["id"];
                $number = $_POST[$name];
                $this->cartUpdate($product["id"],$number);
            }
            header("location:index.php?controller=cart");
        }
        //thanh toán giỏ hàng
        public function checkout() {
            if(isset($_SESSION["customer_email"]) == false) 
                header("location:index.php?controller=account&action=login");
            else {
                $this->cartCheckOut();
                header("location:index.php?controller=cart");
            }
        }
    }
?>