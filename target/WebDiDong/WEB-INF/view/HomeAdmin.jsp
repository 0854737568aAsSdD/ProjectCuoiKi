<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin - Quản Lý Điện Thoại</title>

<!-- Custom fonts for this template-->
<link href="css/all.min.css" rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="css/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/admin.css" rel="stylesheet">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>

<body id="page-top">
	<c:if test="${not empty them }">
		<script type="text/javascript">
			$(window).on('load', function() {
				$('#myModal456').modal('show');
			});
		</script>
	</c:if>
		<c:if test="${not empty suasach }">
		<script type="text/javascript">
			$(window).on('load', function() {
				$('#myModal').modal('show');
			});
		</script>
	</c:if>

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1" href="AdminController">Quản Lý Điện
			Thoại</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Navbar Search -->
		<form action="Admin" method="get"
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="Search for book" aria-label="Search"
					aria-describedby="basic-addon2" name="tkttk">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li style="color: white; font-family: cursive; font-size: 30px">Hello,
				<c:out value="${sessionScope.admin.getTenDangNhap()} "></c:out>
			</li>
		</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="QlPhone">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Quản Lý
						Điện Thoại</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="AdminThanhToanController"> <i
					class="fas fa-fw fa-chart-area"></i> <span>Quản Lý Khách
						Hàng</span>
			</a></li>
				<li class="nav-item"><a class="nav-link"
				href="QuanLyPhanHoi"> <i
					class="fas fa-fw fa-chart-area"></i> <span>Quản Lý Phản Hồi</span>
			</a></li>
		</ul>

		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Admin</a></li>
					<li class="breadcrumb-item active">Quản Lý Điện Thoại</li>
				</ol>

				<!-- Icon Cards-->
				<div class="row">
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-primary o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-comments"></i>
								</div>
								<div class="mr-5">26 New Messages!</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">View Details</span> <span
								class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-warning o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-list"></i>
								</div>
								<div class="mr-5">11 New Tasks!</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">View Details</span> <span
								class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-success o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-shopping-cart"></i>
								</div>
								<div class="mr-5">123 New Orders!</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">View Details</span> <span
								class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-danger o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-life-ring"></i>
								</div>
								<div class="mr-5">13 New Tickets!</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">View Details</span> <span
								class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
				</div>

				<!-- Area Chart Example-->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> Quản Lý Doanh Thu
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="30"></canvas>
					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
				</div>
				<form action=""></form>
				<div class="card mb-3">
					<select class="form-select" aria-label="Default select example"
						onchange="genderChanged(this)">
						<option selected>Chọn loại điện thoại</option>
						<c:forEach items="${loai}" var="l">
							<option value="${l.maloai}">${l.tenloai}</option>
						</c:forEach>
					</select>

				</div>
				<a href="TramTrungChuyen"> Thêm Điện Thoại</a>

				<script language="javascript">
					function genderChanged(obj) {
						var value = obj.value;
						result.value = value;
					}
				</script>
				<form action="QlPhone" method="get">
					<input type="hidden" id="result" value="" name="txtloai" /> <input
						type="submit" value="Tìm Điện Thoại">
				</form>


				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Điện Thoại
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Tên Điện Thoại</th>
										<th>Màn Hình</th>
										<th>Hệ Điều Hành</th>
										<th>Ảnh</th>
										<th>Camera Sau</th>
										<th>Camera Trước</th>
										<th>CPU</th>
										<th>RAM</th>
										<th>BỘ NHỚ TRONG</th>
										<th>GIÁ</th>
										<th>SỬA</th>
										<th>XÓA</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${tensach}" var="s">
										<tr>
											<td>${s.tendienthoai}</td>
											<td>${s.manhinh}</td>
											<td>${s.hedieuhanh}</td>
											<td><img src="${s.anh }" style="width: 100px"></td>
											<td>${s.camerasau}</td>
											<td>${s.cpu}</td>
											<td>${s.cameratruoc}</td>
											<td>${s.ram}</td>
											<td>${s.bonhotrong}</td>
											<td>${s.gia}</td>
											<td><a
												href="TauVuTru?madienthoai=${s.madienthoai}&
											tendienthoai=${s.tendienthoai}&
											gia=${s.gia}&
											manhinh=${s.manhinh}&
											hedieuhanh=${s.hedieuhanh}&
											camerasau=${s.camerasau}&
											cameratruoc=${s.cameratruoc}&
											ram=${s.ram}&
											bonhotrong=${s.bonhotrong}&
											cpu=${s.cpu}&
											anh=${s.anh}									
											"><img
													alt=""
													src="https://raw.githubusercontent.com/0854737568aAsSdD/JavaNangCao/main/src/main/webapp/suasach.jpg"
													width="50px"></a></td>
											<td><a href="Delete?madienthoai=${s.madienthoai}"><img
													alt=""
													src="https://raw.githubusercontent.com/0854737568aAsSdD/JavaNangCao/main/src/main/webapp/Delete.jpg"
													width="50px"></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
				</div>


			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal456" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<div class="modal-body">
					<h3 class="text-center">Đã Thêm Sách Thành Công</h3>
				</div>
			</div>
		</div>
	</div>
		<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<div class="modal-body">
					<h3 class="text-center">Đã Cập Nhật Thành Công</h3>
				</div>
			</div>
		</div>
	</div>

</body>

</html>