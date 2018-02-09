<?php include 'inc/header.php'; ?>
<?php include 'inc/sidebar.php'; ?>
<?php include '../classes/Brand.php'; ?>
<?php
if (!isset($_GET['brandid']) || $_GET['brandid'] == null) {
    echo "<script>window.location = 'brandlist.php';</script>";
} else {
    $brandid = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['brandid']);
}
$brand = new Brand();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $brandName = $_POST['brandName'];
    
    $updatetBrand= $brand->brandUpdate($brandName, $brandid);
}
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Edit Brand</h2>
               <div class="block copyblock">
               <?php 
               if (isset($updatetBrand)) {
                   echo $updatetBrand;
               }
                ?>
                <?php 
                $getBrand = $brand->getBrandById($brandid);
                if ($getBrand) {
                    while ($result = $getBrand->fetch_assoc()) {
                        ?> 
                 <form action="" method="post">
                    <table class="form">                    
                        <tr>
                            <td>
                                <input type="text" name="brandName" value="<?php echo $result['brandName']; ?>" class="medium" />
                            </td>
                        </tr>
                        <tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php
                    }
                } ?>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>
