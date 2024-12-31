<?php 
    $this->fileLayout = "LayoutTrangTrong.php";
 ?>
<section class="breadcrumbbar">
    <div class="container">
        <ol class="breadcrumb mb-0 p-0 bg-transparent">
            <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="index.php?controller=products&action=category&id=<?php echo $record->category_id; ?>">
            <?php
                $category = $this->modelGetCategory($record->category_id);
                echo isset($category->name) ? $category->name : "";
            ?>
            </a></li>
            <li class="breadcrumb-item active"><a href="#">
            <?php
                $product = $this->modelGetProduct($id);
                echo isset($product->name) ? $product->name : "";
            ?>
            </a></li>
        </ol>
    </div>
</section>

<section class="product-page mb-4">
    <div class="container">
        <!-- chi tiết 1 sản phẩm -->
        <div class="product-detail bg-white p-4">
            <div class="row">
                <!-- ảnh  -->
                <div class="col-md-5 khoianh">
                    <div class="anhto mb-4">
                        <a class="active" href="<?php echo $record->name; ?>" data-fancybox="thumb-img">
                            <img class="product-image" src="assets/upload/products/<?php echo $record->photo; ?>" alt="<?php echo $record->name; ?>" style="width: 100%;">
                        </a>
                    </div>
                </div>
                <!-- thông tin sản phẩm: tên, giá bìa giá bán tiết kiệm, các khuyến mãi, nút chọn mua.... -->
                <div class="col-md-7 khoithongtin">
                    <div class="row">
                        <div class="col-md-12 header">
                            <h4 class="ten"><?php echo $record->name; ?></h4>
                            <div class="rate">
                                    <i class="fa fa-star active"></i>
                                    <i class="fa fa-star active"></i>
                                    <i class="fa fa-star active"></i>
                                    <i class="fa fa-star active"></i>
                                    <i class="fa fa-star "></i>
                                </div>
                            <hr>
                        </div>
                        <div class="col-md-7">
                            <div class="gia">
                                <div class="giabia">Giá bán thị trường:<span class="giacu ml-2"><?php echo number_format($record->price); ?> ₫</span></div>
                                <div class="giaban">Giá bán tại Trading: <span
                                        class="giamoi font-weight-bold"><?php echo number_format($record->price - ($record->price * $record->discount)/100); ?> </span><span class="donvitien">₫</span></div>
                                <div class="tietkiem">Tiết kiệm: <b><?php echo number_format($record->price * $record->discount/100); ?>₫</b> <span class="sale">-20%</span>
                                </div>
                            </div>
                            <div class="uudai my-3">
                                <h6 class="header font-weight-bold">Khuyến mãi & Ưu đãi tại Trading:</h6>
                                <ul>
                                    <li><b>Thanh toán trục tiếp </b>Nhận đơn hàng chỉ trong 15p <a href="#">>> Chi tiết</a></li>
                                    <li><b>Combo khóa học HOT - GIẢM 25% </b></li>
                                    <li>Tặng thêm tài liệu liên quan đến khóa học</li>
                                    <li>Bảo hành khóa học 12 tháng (nếu khóa học có lỗi)</li>
                                </ul>
                            </div>
                            <div class="soluong d-flex">
                                <label class="font-weight-bold">Số lượng: </label>
                                <div class="input-number input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text btn-spin btn-dec">-</span>
                                    </div>
                                    <input type="text" value="1" class="soluongsp text-center">
                                    <div class="input-group-append">
                                        <span class="input-group-text btn-spin btn-inc">+</span>
                                    </div>
                                </div>
                            </div>
                            <a class="chonmua" href="index.php?controller=cart&action=create&id=<?php echo $record->id; ?>" class="button">
                                <div class="nutmua btn w-100 text-uppercase">CHỌN MUA</div>
                            </a>
                            
                            <div class="fb-like" data-href="#"
                                data-width="300px" data-layout="button" data-action="like" data-size="small"
                                data-share="true"></div>
                        </div>
                        <div class="col-md-5">
                            <div class="thongtinsach">
                                <ul>
                                    <li>Tác giả: <a href="#" class="tacgia"><?php echo $record->author; ?></a></li>
                                    <li>Hình thức : <b>Khóa học online</b></li>
                                    <li>Số bài học: <b>40</b></li>           
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-description">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active text-uppercase" id="nav-gioithieu-tab"
                            data-toggle="tab" href="#nav-gioithieu" role="tab" aria-controls="nav-gioithieu"
                            aria-selected="true">Giới thiệu</a>
                        <a class="nav-item nav-link text-uppercase" id="nav-danhgia-tab" data-toggle="tab"
                            href="#nav-danhgia" role="tab" aria-controls="nav-danhgia"
                            aria-selected="false">Đánh
                            giá của khách hàng</a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active ml-3" id="nav-gioithieu" role="tabpanel"
                        aria-labelledby="nav-gioithieu-tab">
                        <h6 class="tieude font-weight-bold">Tài liệu tham khảo</h6>
                        <p>
                            <span>
                                <?php echo $record->description; ?>
                                <?php echo $record->content; ?>
                            </span>
                        </p>
                        
                    </div>
                    <div class="tab-pane fade" id="nav-danhgia" role="tabpanel" aria-labelledby="nav-danhgia-tab">
                            <div class="row">
                                <div class="tiledanhgia text-center col-md-4">
                                    <div class="motthanh d-flex align-items-center">5 <i style="color: #f3ce04;" class="fa fa-star"></i>
                                        <div class="progress mx-2"  style="background: #5cb85c;">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                aria-valuemin="0" aria-valuemax="100"></div>
                                        </div><span style="width: 48px;"> <?php echo $this->modelGetStar($record->id,5); ?> vote</span>
                                    </div>
                                    <div class="motthanh d-flex align-items-center">4 <i style="color: #f3ce04;" class="fa fa-star"></i>
                                        <div class="progress mx-2" style="background: #5bc0de;">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                aria-valuemin="0" aria-valuemax="100"></div>
                                        </div><span style="width: 48px;"> <?php echo $this->modelGetStar($record->id,4); ?> vote</span>
                                    </div>
                                    <div class="motthanh d-flex align-items-center">3 <i style="color: #f3ce04;" class="fa fa-star"></i>
                                        <div class="progress mx-2" style="background: #d9534f;">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                aria-valuemin="0" aria-valuemax="100"></div>
                                        </div><span style="width: 48px;"> <?php echo $this->modelGetStar($record->id,3); ?> vote</span>
                                    </div>
                                    <div class="motthanh d-flex align-items-center">2 <i style="color: #f3ce04;" class="fa fa-star"></i>
                                        <div class="progress mx-2" style="background: #f0ad4e;">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                aria-valuemin="0" aria-valuemax="100"></div>
                                        </div> <span style="width: 48px;"> <?php echo $this->modelGetStar($record->id,2); ?> vote</span>
                                    </div>
                                    <div class="motthanh d-flex align-items-center">1 <i style="color: #f3ce04;" class="fa fa-star"></i>
                                        <div class="progress mx-2" style="background: #337ab7;">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                aria-valuemin="0" aria-valuemax="100"></div>
                                        </div> <span style="width: 48px;"> <?php echo $this->modelGetStar($record->id,1); ?> vote</span>
                                    </div>
                                    <div class="btn vietdanhgia mt-3">Viết đánh giá của bạn</div>
                                </div>
                                <!-- nội dung của form đánh giá  -->
                                <div class="formdanhgia col-md-8">
                                    <h6 class="tieude text-uppercase" style="text-align: center;">GỬI ĐÁNH GIÁ CỦA BẠN</h6>
                                    
                                    <div class="form-group" style="text-align: center;">
                                    <div class="fb-comments" data-href="https://devpro.edu.vn" data-width="" data-numposts="1"></div>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
