<?php 
    $this->fileLayout = "LayoutTrangTrong.php";
 ?>
<section class="page-content my-3">
    <div class="container">
        <div>
            <h1 class="header text-uppercase">
                Tìm kiếm sản phẩm
            </h1>
        </div>
    </div>
</section>
    <section class="content my-4">
        <div class="container">
            <div class="noidung bg-white" style=" width: 100%;">
                <div class="header-khoi-sp d-flex">
                    <div class="tag">
                        <label>Tác giả nổi bật:</label>
                        <a href="#">Tất cả</a>
                        <?php foreach($data as $rows): ?>
                        <a href="#" data-tacgia=".MarieForleo"><?php echo($rows->author); ?></a>
                        <?php endforeach; ?>
                    </div>
                    <div class="sort d-flex ml-auto">
                    </div>
                </div>
                <div class="items">
                    <div class="row">
                        <?php foreach($data as $rows): ?>
                            <div class="col-lg-3 col-md-4 col-xs-6 item DeanGraziosi">
                                <div class="card">
                                    <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>" class="motsanpham"
                                        style="text-decoration: none; color: black;" data-toggle="tooltip"
                                        data-placement="bottom" title="<?php echo $rows->name; ?>">
                                        <img class="card-img-top anh" src="assets/upload/products/<?php echo $rows->photo; ?>"
                                            alt="<?php echo $rows->name; ?>">
                                        <div class="card-body noidungsp mt-3">
                                            <h6 class="card-title ten"><?php echo $rows->name; ?></h6>
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
                                                    <span class="text-muted">0 nhận xét</span>
                                                </ul>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="pagination-bar my-3">
                    <div class="row">
                        <div class="col-12">
                            <nav>
                                <ul class="pagination justify-content-center">
                                    <li class="page-item"><a class="page-link" href="#">Trang</a></li>
                                    <?php for($i = 1; $i <= $numPage; $i++): ?>
                                    <li class="page-item"><a class="page-link" href="index.php?controller=search&action=name&key=<?php echo $key; ?>&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                                    <?php endfor; ?>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>