<?php 
    $this->fileLayout = "LayoutTrangTrong.php";
 ?>
 <section class="breadcrumbbar">
    <div class="container">
        <ol class="breadcrumb mb-0 p-0 bg-transparent">
            <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="#">
            <?php
                $category = $this->modelGetCategory($id);
                echo isset($category->name) ? $category->name : "";
            ?>
            </a></li>
        </ol>
    </div>
</section>

<section class="banner">
    <div class="container">
        <a><img src="https://gldt.mql5.vn/2024/11/_GBP_USD_2024-11-11.png" class="img-fluid"></a>
    </div>
</section>
    
    <section class="content my-4">
        <div class="container">
            <div class="noidung bg-white" style=" width: 100%;">
                <div class="header-khoi-sp d-flex">
                    <div class="container">
                        <div class="panel-body">
                            <div style="display: flex;">
                                <div>
                                    <li class="list-group-item" style="border:0px;">Từ &nbsp;&nbsp;
                                    <input type="number" min="0" value="0" id="fromPrice" class="form-control">
                                    </li>
                                </div>
                                <div>
                                    <li class="list-group-item" style="border:0px;">Đến &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="number" min="0" value="0" id="toPrice" class="form-control">
                                    </li>
                                </div>
                                <div>
                                    <li class="list-group-item" style="border:0px; text-align:center;margin-top: 24px;">
                                    <input type="button" class="btn btn-warning" style="background: #F5A623; color: white;" value="Tìm mức giá" onclick="location.href = 'index.php?controller=search&amp;action=price&amp;fromPrice=' + document.getElementById('fromPrice').value + '&amp;toPrice=' + document.getElementById('toPrice').value;">
                                    </li>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sort d-flex ml-auto">
                        <div class="sap-xep">
                            <label for="sapxep-select" class="label-select">Sắp xếp</label>
                            <?php
                                $order = isset($_GET["order"]) ? $_GET["order"] : "";
                            ?>
                            <select class="sapxep-select" onchange="location.href = 'index.php?controller=products&action=category&id=<?php echo $id; ?>&order='+this.value;">
                                <option value="0">Sắp xếp</option>
                                <option <?php if($order == "priceAsc"): ?> selected <?php endif; ?> value="priceAsc">Giá: Thấp - Cao</option>
                                <option <?php if($order == "priceDesc"): ?> selected <?php endif; ?> value="priceDesc">Giá: Cao - Thấp</option>
                                <option <?php if($order == "nameAsc"): ?> selected <?php endif; ?> value="nameAsc">Tên: A - Z</option>
                                <option <?php if($order == "nameDesc"): ?> selected <?php endif; ?> value="nameDesc">Tên: Z - A</option>
                            </select>
                        </div>
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
                                    <li class="page-item"><a class="page-link" href="index.php?controller=products&action=category&id=<?php echo $id; ?>&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                                    <?php endfor; ?>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>