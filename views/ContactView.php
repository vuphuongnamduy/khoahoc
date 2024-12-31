<?php 
  $this->fileLayout = "LayoutTrangTrong.php";
 ?>
 <?php 
 if(isset($_POST["send"])) {
     
    require 'includes/PHPMailer.php';
    require 'includes/SMTP.php';
    require 'includes/Exception.php';
    $mail = new PHPMailer();
    $mail->isSMTP();
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPAuth = "true";
    $mail->SMTPSecure = "tls";
    $mail->Port = "587";
    $mail->Username = "namduy1320@gmail.com";
    $mail->Password = "123456";
    $mail->Subject = "TRADNG";
    $mail->setFrom("namduy2210z@gmail.com");
    $mail->Subject = $_POST["subject"];
    $mail->Body = $_POST["content"];
    $mail->addAddress($_POST["email"], 'Thu user');
    if($mail->Send()) {
        echo "Email Sent";
    }
    else {
        echo "Error";
    }
 }
 ?>
 <div class="container" style="margin-bottom: 34px;">
    <section class="breadcrumbbar">
        <div class="container">
            <ol class="breadcrumb mb-0 p-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
                <li class="breadcrumb-item active"><a href="#">
                Liên hệ
                </a></li>
            </ol>
        </div>
    </section>
    <div class="row" style="margin-top: 26px;">
    
        <div class="col-lg-12 col-md-12">
        <iframe style="width: 100%" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2948095185634!2d105.7940398148199!3d20.98081639478946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc508f938fd%3A0x883e474806a2d1f2!2zSOG7jWMgdmnhu4duIEvhu7kgdGh14bqtdCBN4bqtdCBtw6M!5e0!3m2!1svi!2s!4v1630626682622!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
 </div>