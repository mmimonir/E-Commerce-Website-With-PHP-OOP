<?php include 'inc/header.php'; ?>
<?php 
$login = Session::get("cuslogin");
if ($login == false) {
    header("Location:login.php");
}
 ?>

 <style type="text/css">
 	.tblone{width: 50%; margin: 0 auto; border:2px solid #ddd;}
 	.tblone tr td{text-align: justify;}
 </style>
<div class="main">
	<div class="content">
		<div class="section group">
			<?php 
            $id = Session::get("cmrId");
            $getData = $cmr->getCustomerData($id);
            if ($getData) {
                while ($result = $getData->fetch_assoc()) {
                    ?>
			<table class="tblone">
				<tr>
					<td colspan="3" style="text-align: center;"><h2>Your Profile Details</h2></td>					
				</tr>
				<tr>
					<td width="20%">Name</td>
					<td width="5%">:</td>
					<td><?php echo $result['name']; ?></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td>:</td>
					<td><?php echo $result['phone']; ?></td>
				</tr>
				<tr>
					<td>Email</td>
					<td>:</td>
					<td><?php echo $result['email']; ?></td>
				</tr>
				<tr>
					<td>Address</td>
					<td>:</td>
					<td><?php echo $result['address']; ?></td>
				</tr>
				<tr>
					<td>City</td>
					<td>:</td>
					<td><?php echo $result['city']; ?></td>
				</tr>
				<tr>
					<td>Zip Code</td>
					<td>:</td>
					<td><?php echo $result['zip']; ?></td>
				</tr>
				<tr>
					<td>Country</td>
					<td>:</td>
					<td><?php echo $result['country']; ?></td>
				</tr>
				<tr>
					
					<td colspan="3" style="text-align: center; font-size: 22px;"><a style="color: green;" href="editprofile.php">Update Details</a></td>
					
				</tr>				
			</table>
			<?php
                }
            } ?>			
		</div>
	</div>
<?php include 'inc/footer.php'; ?>
