<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block">  
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>Post Title</th>
					<th>Description</th>
					<th>Category</th>
					<th>Image</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<tr class="odd gradeX">
					<td>Trident</td>
					<td>Internet Explorer 4.0</td>
					<td>Win 95+</td>
					<td class="center"> 4</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="even gradeC">
					<td>Trident</td>
					<td>Internet Explorer 5.0</td>
					<td>Win 95+</td>
					<td class="center">5</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="odd gradeA">
					<td>Trident</td>
					<td>Internet Explorer 5.5</td>
					<td>Win 95+</td>
					<td class="center">5.5</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="even gradeA">
					<td>Trident</td>
					<td>Internet Explorer 6</td>
					<td>Win 98+</td>
					<td class="center">6</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="odd gradeA">
					<td>Trident</td>
					<td>Internet Explorer 7</td>
					<td>Win XP SP2+</td>
					<td class="center">7</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="even gradeA">
					<td>Trident</td>
					<td>AOL browser (AOL desktop)</td>
					<td>Win XP</td>
					<td class="center">6</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 1.0</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.7</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 1.5</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.8</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 2.0</td>
					<td>Win 98+ / OSX.2+</td>
					<td class="center">1.8</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 3.0</td>
					<td>Win 2k+ / OSX.3+</td>
					<td class="center">1.9</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Camino 1.0</td>
					<td>OSX.2+</td>
					<td class="center">1.8</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				
				<tr class="gradeX">
					<td>Misc</td>
					<td>Dillo 0.8</td>
					<td>Embedded devices</td>
					<td class="center">-</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Links</td>
					<td>Text only</td>
					<td class="center">-</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Lynx</td>
					<td>Text only</td>
					<td class="center">-</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeC">
					<td>Misc</td>
					<td>IE Mobile</td>
					<td>Windows Mobile 6</td>
					<td class="center">-</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeC">
					<td>Misc</td>
					<td>PSP browser</td>
					<td>PSP</td>
					<td class="center">-</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
				<tr class="gradeU">
					<td>Other browsers</td>
					<td>All others</td>
					<td>-</td>
					<td class="center">-</td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
				</tr>
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
