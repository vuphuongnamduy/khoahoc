<?php 
    $this->fileLayout = "Layout.php";
 ?>                    
<div class="col-md-12">  
    <div class="panel panel-primary" style="border-color: #F36A5A !important; border-radius: 5px;">
        <div class="panel-heading" style="background-color: #F36A5A; border-color: #F36A5A;">Add edit slides</div>
        <div class="panel-body">
        <form method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Tiêu đề</div>
                <div class="col-md-10">
                    <input type="text" value="<?php echo isset($record->name)?$record->name:""; ?>" name="name" class="form-control" required>
                </div>
            </div>
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Ảnh</div>
                <div class="col-md-10">
                    <input type="file" name="photo">
                </div>
            </div>
            <?php if(isset($record->photo) && file_exists("../assets/upload/slides/".$record->photo)): ?>
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <img src="../assets/upload/slides/<?php echo $record->photo; ?>" style="width:100px;">
                </div>
            </div>
            <?php endif; ?>
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <input type="submit" value="Process" class="btn" style="background-color: #F36A5A; color: white">
                </div>
            </div>
        </form>
        </div>
    </div>
</div>