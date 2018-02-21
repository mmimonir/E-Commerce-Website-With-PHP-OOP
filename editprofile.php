<?php include 'inc/header.php'; ?>
<?php 
$login = Session::get("cuslogin");
if ($login == false) {
    header("Location:login.php");
}
 ?>
 <?php 
$cmrId = Session::get("cmrId");
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    $updateCmr = $cmr->customerUpdate($_POST, $cmrId);
}
?>

 <style type="text/css">
 	.tblone{width: 50%; margin: 0 auto; border:2px solid #ddd;}
 	.tblone tr td{text-align: justify;}
 	.tblone input[type="text"]{width:400px; padding: 5px; font-size: 15px;}
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
                    <form action="" method="post">
			<table class="tblone">
				<?php if (isset($updateCmr)) {
                        echo "<tr><td colspan='3' style='text-align: center;''>".$updateCmr."</td></tr>";
                    } ?>
				<tr>
					<td colspan="3" style="text-align: center;"><h2>Update Profile Details</h2></td>					
				</tr>
				<tr>
					<td width="20%">Name</td>
					<td width="5%">:</td>
					<td><input type="text" name="name" value="<?php echo $result['name']; ?>"></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td>:</td>
					<td><input type="text" name="phone" value="<?php echo $result['phone']; ?>"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td>:</td>
					<td><input type="text" name="email" value="<?php echo $result['email']; ?>"></td>
				</tr>
				<tr>
					<td>Address</td>
					<td>:</td>
					<td><input type="text" name="address" value="<?php echo $result['address']; ?>"></td>
				</tr>
				<tr>
					<td>City</td>
					<td>:</td>
					<td><input type="text" name="city" value="<?php echo $result['city']; ?>"></td>
				</tr>
				<tr>
					<td>Zip Code</td>
					<td>:</td>
					<td><input type="text" name="zip" value="<?php echo $result['zip']; ?>"></td>
				</tr>
				<tr>
					<td>Country</td>
					<td>:</td>					
					<td><input type="text" name="country" value="<?php echo $result['country']; ?>"></td>
				</tr>
				<tr>					
					<td colspan="3" style="text-align: center;"><input type="submit" name="submit" value="Save"></td>					
				</tr>				
			</table>
			</form>
			<?php
                }
            } ?>			
		</div>
	</div>
<?php include 'inc/footer.php'; ?>
