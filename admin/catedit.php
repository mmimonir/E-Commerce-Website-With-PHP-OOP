<?php include 'inc/header.php'; ?>
<?php include 'inc/sidebar.php'; ?>
<?php include '../classes/Category.php'; ?>
<?php
if (!isset($_GET['catid']) || $_GET['catid'] == null) {
    echo "<script>window.location = 'catlist.php';</script>";
} else {
    $catid = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['catid']);
}
$cat = new Category();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $catName = $_POST['catName'];
    
    $updatetCat= $cat->catUpdate($catName, $catid);
}
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Edit Category</h2>
               <div class="block copyblock">
               <?php 
               if (isset($updatetCat)) {
                   echo $updatetCat;
               }
                ?>
                <?php 
                $getCat = $cat->getCatById($catid);
                if ($getCat) {
                    while ($result = $getCat->fetch_assoc()) {
                        ?> 
                 <form action="" method="post">
                    <table class="form">                    
                        <tr>
                            <td>
                                <input type="text" name="catName" value="<?php echo $result['catName'] ?>" class="medium" />
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
