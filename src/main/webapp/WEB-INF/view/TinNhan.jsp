<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>Trang giới thiệu</title>
<link rel="shortcut icon" href="hinh/python.jpg" type="image/x-icon">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.x.x/css/swiper.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style>
body {
	background-image: linear-gradient(rgba(58, 57, 57, 0.45),
		rgba(58, 57, 57, 0.45)), url("hinh/RE4wB6h.jpg");
	display: flex;
	align-items: center;
	justify-content: center;
}

.container-fluid {
	padding: 0;
}

.imgcard {
	text-align: center;
	padding-top: 20px;
}

.imgcard img {
	width: 365px;
}

.imgcard h3 {
	color: #fff;
}

.swiper-container {
	width: 100%;
	padding-top: 50px;
	padding-bottom: 150px;
}

.swiper-slide {
	background-position: center;
	background-size: cover;
	width: 400px;
	height: 450px;
}

#nav1 {
	padding: 10px 0px;
	opacity: 0.9;
	z-index: 100;
}

#nav2 {
	opacity: 0.9;
	line-height: 70px;
	z-index: 1;
}

a, span, h2, p {
	color: white;
}

#nav1 li {
	margin-right: 80px;
}

ul {
	list-style: none;
}

.listSP {
	padding-left: 0px;
	display: none;
	position: absolute;
	background-color: rgb(255, 255, 255);
}

#formtk {
	margin-bottom: 10px !important;
	width: 280px;
}

.listSP li {
	padding: 10px;
	width: 100%;
	border-bottom: 1.2px dotted black;
}

.listSP li a {
	color: black;
}

.listSP img {
	width: 40px;
	margin-right: 10px;
}

section {
	padding: 40px 30%;
}

#form a img {
	height: 45px;
}

#footer {
	height: 80px;
	padding-left: 12%;
	opacity: 0.9;
}

footer img {
	height: 50px;
	border-radius: 50px;
	margin-left: 10px;
}

.modal-dialog {
	width: 800px;
	margin: 30px auto;
}
</style>
</head>

<body>

	<c:set var="language" value="${khachhang.getHoten()}" scope="session" />
	<div class="container-fluid">
		<nav class="navbar navbar-expand-sm bg-dark justify-content-center"
			id="nav1">
			<ul class="navbar-nav">
				<a class="navbar-brand" href="#"> <img src="hinh/htch_image.png"
					style="width: 40px;">
				</a>
				<li class="nav-item"><span>Hệ thống:</span><br> <span>Cửa
						hàng bán lẻ</span></li>
				<li><a class="navbar-brand" href="#"> <img
						src="hinh/phonehead_image.png" style="width: 40px;">
				</a></li>


				<li class="nav-item"><span>Hotline mua hàng:</span><br> <span>Gọi
						ngay: 1900100</span></li>
				<a class="navbar-brand" href="#"> <img src="hinh/user_image.png"
					style="width: 40px;">
				</a>
				<c:if test="${empty khachhang}">
					<li class="nav-item"><span><a href="Login">Đăng
								nhập</a></span></li>
				</c:if>
				<c:if test="${not empty khachhang}">
					<ul>
						<li class="nav-item" style="color: yellow;">Hello, ${language }</li>
						<li class="nav-item"><span><a href="Logout">Đăng
									Xuất</a></span></li>
					</ul>
>
				</c:if>



			</ul>
			<form style="padding-left: 10%; position: relative;">
				<div class="input-group mb-3" id="formtk">
					<input id="myInput" class="form-control" type="text"
						placeholder="Tìm kiếm sản phẩm..">
					<div class="input-group-append">
						<button class="btn btn-light " type="submit">Go</button>
					</div>
				</div>
				<ul class="listSP " id="myList">
					<li id="litest"><img
						src="hinh/samsung-galaxy-s20-plus-400x460-fix-400x460.png"><a
						href="Html/html20.html">Samsung Galaxy S20+</a></li>
					<li><img src="hinh/iphone-11.jpg"><a
						href="Html/htmliphone11.html">iPhone 11 64GB</a></li>
					<li><img src="hinh/xiaomi-redmi-note-9s.jpg"><a
						href="Html/htmlredmi9s.html">Xiaomi Redmi Note 9S </a></li>
					<li><img src="hinh/oppo-a52-spec-720x333.jpg"><a
						href="Html/htmlA52.html">OPPO A52</a></li>
					<li><img src="hinh/nokia-53-den-600x600-400x400.jpg"><a
						href="Html/htmlnokia5.3.html">Nokia 5.3</a></li>
					<li><img src="hinh/realme-6i-trang-600-200x200.jpg"><a
						href="Html/htmlredmi6i.html">Realme 6i</a></li>
					<li><img src="hinh/samsung-galaxy-fold-black-400x400.jpg"><a
						href="Html/htmlgalaxyford.html">Samsung Galaxy Fold</a></li>
					<li><img src="hinh/iphone-11-pro-max-512gb-gold-400x400.jpg"><a
						href="Html/htmliphone11pro.html">iPhone 11 Pro Max 512GB</a></li>
					<li><img src="hinh/iphone-11-pro-256gb-black-400x400.jpg"><a
						href="Html/htmliphone256.html">iPhone 11 Pro Max 256GB</a></li>
					<li><img
						src="hinh/samsung-galaxy-z-flip-den-600x600-400x400.jpg"><a
						href="Html/htmlgalaxyz.html">Samsung Galaxy Z Flip</a></li>
					<li><img src="hinh/iphone-11-pro-256gb-black-400x400.jpg"><a
						href="Html/htmliphone256.html">iPhone 11 Pro 256GB</a></li>
					<li><img src="hinh/iphone-11-pro-max-green-400x400.jpg"><a
						href="Html/htmliphone256.html">iPhone 11 Pro Max 64GB</a></li>
					<li><img src="hinh/iphone-xs-max-256gb-white-400x400.jpg"><a
						href="Html/htmliphone256.html">iPhone Xs Max 256GB</a></li>
					<li><img
						src="hinh/samsung-galaxy-s20-ultra-600x600-1-400x400.jpg"><a
						href="Html/html20.html">Samsung Galaxy S20 Ultra</a></li>
					<li><img
						src="hinh/samsung-galaxy-note-10-plus-blue-400x400.jpg"><a
						href="Html/html20.html">Samsung Galaxy Note 10+</a></li>
					<li><img src="hinh/iphone-xs-max-gold-400x400.jpg"><a
						href="Html/htmliphone11pro.html">iPhone Xs Max 64GB</a></li>
					<li><img src="hinh/iphone-11-256gb-black-400x400.jpg"><a
						href="Html/htmliphone11.html">iPhone 11 256GB</a></li>
					<li><img src="hinh/iphone-xs-max-256gb-white-400x400.jpg"><a
						href="Html/html20.html">iPhone Xs 256GB</a></li>
					<li><img src="hinh/huawei-p40-pro-600x600-3-400x400.jpg"><a
						href="Html/html20.html">Huawei P40 Pro</a></li>
					<li><img src="hinh/oppo-find-x2-blue-600x600-400x400.jpg"><a
						href="Html/html20.html">OPPO Find X2</a></li>
					<li><img src="hinh/blackberry-key2-4-400x400.jpg"><a
						href="Html/html20.html">BlackBerry KEY2 </a></li>
				</ul>
			</form>

		</nav>
		<nav class="navbar bg-dark justify-content-center" id="nav2">
			<ul class="nav ">
				<li class="nav-item"><a class="nav-link" href="Home">TRANG
						CHỦ</a></li>
				<li class="nav-item"><a class="nav-link" href="Home">GIỚI
						THIỆU</a></li>
				<li class="nav-item"><a class="nav-link" href="phone">SẢN
						PHẨM</a></li>
				<li class="nav-item"><a class="nav-link" href="#">TIN TỨC</a></li>
				<li><a href="Html/Home.html"><img
						style="height: 80px; border-radius: 50px; margin: 0 50px;"
						src="hinh/python.jpg"></a></li>
				<li class="nav-item"><a class="nav-link" href="PhanHoi">PHẢN
						HỒI</a></li>
				<li class="nav-item"><a class="nav-link" href="#">NHƯỢNG
						QUYỀN </a></li>
				<li class="nav-item"><a class="nav-link"
					href="LichSuController">THANH TOÁN</a></li>
				<li class="nav-item"><a class="nav-link" href="Admin">ADMIN</a></li>
			</ul>
		</nav>
							<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
									    <th>Họ Tên</th>
										<th>Nội Dung Phản Hồi</th>
										<th>Nội Dung</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${phanhoi}" var="t">
										<tr>
				<td style="color: yellow;">${t.getHoten() }</td>
				<td style="color: yellow;">${t.getNoidung()}</td>
											<td>
<c:choose>
						<c:when test="${t. getXacnhan() == 0}">
							<p>Chưa trả lời</p>
						</c:when>
						<c:when test="${t.getXacnhan() == 1 }">
							<p>${t.getPhanhoi() }</p>
						</c:when>
						<c:otherwise>
							<p></p>
						</c:otherwise>
					</c:choose>				
										    </td>							
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
		
		
</body>

</html>