<?php 
    $this->fileLayout = "LayoutTrangChu.php";
 ?>
<section class="_1khoi sachmoi bg-white">
        <div class="container">
            <div class="noidung" style=" width: 100%;">
                <div class="row">
                    <div class="col-12 d-flex justify-content-between align-items-center pb-2 bg-transparent pt-4">
                        <h1 class="header text-uppercase" style="font-weight: 400;">KHÓA HỌC TUYỂN CHỌN</h1>
                        <a href="#" class="btn btn-warning btn-sm text-white">Xem tất cả</a>
                    </div>
                </div>
                <div class="khoisanpham" style="padding-bottom: 2rem;">
                    <?php 
                        $saleProduct = $this->modelSaleProduct();
                    ?>
                    <?php foreach($saleProduct as $rows): ?>
                    <div class="card">
                        <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>" class="motsanpham"
                            style="text-decoration: none; color: black;" data-toggle="tooltip" data-placement="bottom"
                            title="<?php echo $rows->name; ?>">
                            <img class="card-img-top anh" src="assets/upload/products/<?php echo $rows->photo; ?>"
                                alt="<?php echo $rows->name; ?>">
                            <div class="card-body noidungsp mt-3">
                                <h3 class="card-title ten"><?php echo $rows->name; ?></h3>
                                <small class="tacgia text-muted"><?php echo $rows->author; ?></small>
                                <div class="gia d-flex align-items-baseline">
                                    <div class="giamoi"><?php echo number_format($rows->price - ($rows->price * $rows->discount)/100); ?> ₫</div>
                                    <div class="giacu text-muted"><?php echo number_format($rows->price); ?></div>
                                    <div class="sale">-<?php echo $rows->discount; ?>%</div>
                                </div>
                                <div class="danhgia">
                                    <ul class="d-flex" style="list-style: none;">
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><i class="fa fa-star"></a></i></li>
                                        
                                        <li><span class="text-muted">0 nhận xét</span></li>
                                    </ul>
                                </div>
                            </div>
                        </a>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </section>


    <section class="_1khoi combohot mt-4">
        <div class="container">
            <div class="noidung bg-white" style=" width: 100%;">
                <div class="row">
                    <!--header -->
                    <div class="col-12 d-flex justify-content-between align-items-center pb-2 bg-light">
                        <h2 class="header text-uppercase" style="font-weight: 400;">COMBO KHÓA HỌC HOT - GIẢM ĐẾN 25%</h2>
                        <a href="#" class="btn btn-warning btn-sm text-white">Xem tất cả</a>
                    </div>
                </div>
                <div class="khoisanpham">
                    <?php 
                        $hotProduct = $this->modelHotProduct();
                    ?>
                    <?php foreach($hotProduct as $rows): ?>
                    <div class="card">
                        <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>" class="motsanpham" style="text-decoration: none; color: black;"
                            data-toggle="tooltip" data-placement="bottom" title="<?php echo $rows->name; ?>">
                            <img class="card-img-top anh" src="assets/upload/products/<?php echo $rows->photo; ?>"
                                alt="<?php echo $rows->name; ?>">
                            <div class="card-body noidungsp mt-3">
                                <h3 class="card-title ten"><?php echo $rows->name; ?></h3>
                                <small class="tacgia text-muted"><?php echo $rows->author; ?></small>
                                <div class="gia d-flex align-items-baseline">
                                    <div class="giamoi"><?php echo number_format($rows->price - ($rows->price * $rows->discount)/100); ?> ₫</div>
                                    <div class="giacu text-muted"><?php echo number_format($rows->price); ?> ₫</div>
                                    <div class="sale">-<?php echo $rows->discount; ?>%</div>
                                </div>
                                <div class="danhgia">
                                    <ul class="d-flex" style="list-style: none;">
                                    <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><i class="fa fa-star"></a></i></li>
                                        <li><span class="text-muted">0 nhận xét</span></li>
                                    </ul>
                                </div>
                            </div>
                        </a>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </section>

    <section class="_1khoi sapphathanh mt-4">
        <div class="container">
            <div class="noidung bg-white" style=" width: 100%;">
                <div class="row">
                    <div class="col-12 d-flex justify-content-between align-items-center pb-2 bg-light">
                        <h2 class="header text-uppercase" style="font-weight: 400;">KHÓA HỌC SẮP RA MẮT / ĐẶT TRƯỚC</h2>
                        <a href="#" class="btn btn-warning btn-sm text-white">Xem tất cả</a>
                    </div>
                </div>
                <div class="khoisanpham">
                    <?php 
                        $newProduct = $this->modelNewProduct();
                    ?>
                    <?php foreach($newProduct as $rows): ?>
                    <div class="card">
                        <a href="#" class="motsanpham" style="text-decoration: none; color: black;"
                            data-toggle="tooltip" data-placement="bottom" title="<?php echo $rows->name; ?>">
                            <img class="card-img-top anh" src="assets/upload/products/<?php echo $rows->photo; ?>"
                                alt="<?php echo $rows->name; ?>">
                            <div class="card-body noidungsp mt-3">
                                <h3 class="card-title ten"><?php echo $rows->name; ?></h3>
                                <small class="tacgia text-muted"><?php echo $rows->author; ?></small>
                                <div class="gia d-flex align-items-baseline">
                                </div>
                                <div class="danhgia">
                                    <ul class="d-flex" style="list-style: none;">
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=1"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=2"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=3"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=4"><i class="fa fa-star"></a></i></li>
                                        <li class="active"><a href="index.php?controller=products&action=rating&id=<?php echo $rows->id; ?>&star=5"><i class="fa fa-star"></a></i></li>
                                        <li><span class="text-muted">0 nhận xét</span></li>
                                    </ul>
                                </div>
                            </div>
                        </a>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </section>
    <section class="_1khoi sachnendoc bg-white mt-4">
        <div class="container">
            <div class="noidung" style=" width: 100%;">
                <div class="row">
                    <div class="col-12 d-flex justify-content-between align-items-center pb-2 bg-transparent pt-4">
                        <h2 class="header text-uppercase" style="font-weight: 400;">TÀI LIỆU THAM KHẢO</h2>
                        <a href="#" class="btn btn-warning btn-sm text-white">Xem tất cả</a>
                    </div>
                    <?php 
                        $news = $this->modelHotNews();
                    ?>
                    <?php foreach($news as $rows): ?>
                    <div class="col-lg col-sm-4">
                        <div class="card">
                            <a href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>" class="motsanpham" style="text-decoration: none; color: black;"
                                data-toggle="tooltip" data-placement="bottom"
                                title="<?php echo $rows->name; ?>">
                                <img class="card-img-top anh" src="assets/upload/news/<?php echo $rows->photo; ?>"
                                    alt="<?php echo $rows->name; ?>">
                                <div class="card-body noidungsp mt-3">
                                    <h3 class="card-title ten"><?php echo $rows->name; ?></h3>
                                    <small class="thoigian text-muted"><?php echo $rows->date; ?></small>
                                    <div><a class="detail" href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>">Xem chi tiết</a></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <hr>
        </div>
    </section>