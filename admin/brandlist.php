<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/Brand.php'; ?>
<?php 
$brand = new Brand();
if (isset($_GET['delcat'])) {
    $id = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['delcat']);
    $delCat = $brand->delBrandById($id);
}
 ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Brand List</h2>
                <div class="block">
                <?php 
                if (isset($delCat)) {
                    echo $delCat;
                }
                 ?>        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php 
                        $getBrand = $brand->getAllBrand();
                        if ($getBrand) {
                            $i=0;
                            while ($result = $getBrand->fetch_assoc()) {
                                $i++; ?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $result['brandName']; ?></td>
							<td><a href="brandedit.php?brandid=<?php echo $result['brandId']; ?>">Edit</a> || <a onclick="return confirm('Are you sure to delete this?')" href="?delcat=<?php echo $result['brandId']; ?>">Delete</a></td>
						</tr>
						<?php
                            }
                        } ?>
					</tbody>
				</table>
               </div>
            </div>
        </div>
<script type="text/javascript">
	$(document).ready(function () {
	    setupLeftMenu();

	    $('.datatable').dataTable();
	    setSidebarHeight();
	});
</script>
<?php include 'inc/footer.php';?>

