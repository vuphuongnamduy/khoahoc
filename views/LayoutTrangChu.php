<!DOCTYPE html>
<html lang="vi">

<head>
    <title>TRADING</title>
    <meta name="keywords">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./assets/frontend/css/home.css">
    <script type="text/javascript" src="./assets/frontend/js/main.js"></script>
    <link rel="stylesheet" href="./assets/frontend/fontawesome_free_5.13.0/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./assets/frontend/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="./assets/frontend/slick/slick-theme.css" />
    <script type="text/javascript" src="./assets/frontend/slick/slick.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
    <link rel="canonical" href="http://dealbook.xyz/">
    <meta name="google-site-verification" content="urDZLDaX8wQZ_-x8ztGIyHqwUQh2KRHvH9FhfoGtiEw" />
    <link rel="apple-touch-icon" sizes="180x180" href="./assets/frontend/favicon_io/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/frontend/favicon_io/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/frontend/favicon_io/favicon-16x16.png">
    <link rel="manifest" href="./assets/frontend/favicon_io/site.webmanifest">
    <style>img[alt="www.000webhost.com"]{display: none;}</style>
    
</head>

<body>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0"></script>

    <?php include "views/HeaderView.php"; ?>

    <!-- contanier -->
    <?php echo $this->view; ?>

    <section class="abovefooter text-white" style="background-color: #CF111A;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="dichvu d-flex align-items-center">
                        <img src="./assets/frontend/images/icon-books.png" alt="icon-books">
                        <div class="noidung">
                            <h3 class="tieude font-weight-bold">RẤT NHIỀU KHÓA HỌC HAY ĐƯỢC ĐÁNH GIÁ CAO</h3>
                            <p class="detail">Tuyển chọn bởi Trading</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="dichvu d-flex align-items-center">
                        <img src="./assets/frontend/images/icon-ship.png" alt="icon-ship">
                        <div class="noidung">
                            <h3 class="tieude font-weight-bold">THANH TOÁN TRỰC TUYẾN</h3>
                            <p class="detail">Nhận khóa học sau 15p</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="dichvu d-flex align-items-center">
                        <img src="./assets/frontend/images/icon-gift.png" alt="icon-gift">
                        <div class="noidung">
                            <h3 class="tieude font-weight-bold">TÀI LIỆU MIỄN PHÍ</h3>
                            <p class="detail">Tài liệu được chia sẻ bới các chuyên gia</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="dichvu d-flex align-items-center">
                        <img src="./assets/frontend/images/icon-return.png" alt="icon-return">
                        <div class="noidung">
                            <h3 class="tieude font-weight-bold">BẢO HÀNH 12 THÁNG</h3>
                            <p class="detail">NẾU CÓ BẤT KÌ LỖI GÌ SẼ ĐƯỢC HỖ TRỢ VÀ HOÀN TRẢ 100% SỐ TIỀN</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- footer  -->
    <footer>
        <div class="container py-4">
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="gioithieu">
                        <h3 class="header text-uppercase font-weight-bold">Về Trading</h3>
                        <a href="#">Giới thiệu về Trading</a>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="hotrokh">
                        <h3 class="header text-uppercase font-weight-bold">HỖ TRỢ KHÁCH HÀNG</h3>
                        <a href="#">Hướng dẫn đặt hàng</a>
                        <a href="#">Phương thức thanh toán</a>
                        <a href="#">Chính sách đổi trả</a>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="lienket">
                        <h3 class="header text-uppercase font-weight-bold">HỢP TÁC VÀ LIÊN KẾT</h3>
                        <img src="./assets/frontend/images/dang-ky-bo-cong-thuong.png" alt="dang-ky-bo-cong-thuong">
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="ptthanhtoan">
                        <h3 class="header text-uppercase font-weight-bold">Phương thức thanh toán</h3>
                        <img src="./assets/frontend/images/visa-payment.jpg" alt="visa-payment">
                        <img src="./assets/frontend/images/master-card-payment.jpg" alt="master-card-payment">
                        <img src="./assets/frontend/images/jcb-payment.jpg" alt="jcb-payment">
                        <img src="./assets/frontend/images/atm-payment.jpg" alt="atm-payment">
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <div class="fixed-bottom">
        <div class="btn btn-warning float-right rounded-circle nutcuonlen" style="background: #CF111A;
    position: absolute;
    bottom: 100px;
    right: 34px;" id="backtotop" href="#"
            style="background:#CF111A;"><i class="fa fa-chevron-up text-white"></i></div>
    </div>
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/613b5a3725797d7a89fe4ac0/1ff7tgrb7';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
</body>

</html>