<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sản phẩm</title>
<link rel="shortcut icon" href="hinh/python.jpg" type="image/x-icon">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jsproducts.js"></script>
<link rel="stylesheet" href="css/css.css">
</head>

<body 
	<c:set var="language" value="${khachhang.getHoten()}" scope="session" />

data-spy="scroll" data-target="#nav1" data-offset="50">

	<div class="container-fluid" style="padding: 70px 0px 0px 0px;">
		<nav
			class="navbar navbar-expand-sm bg-dark justify-content-center fixed-top"
			id="nav1">
			<ul class="navbar-nav" id="uln">
				<a class="navbar-brand" href="#"> <img src="hinh/htch_image.png"
					style="width: 40px;">
				</a>
				<li class="nav-item"><span>Hệ thống:</span><br> <span>Cửa
						hàng bán lẻ</span></li>
				<a class="navbar-brand" href="#"> <img
					src="hinh/phonehead_image.png" style="width: 40px;">
				</a>
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
						<li class="nav-item"><span><a href="KiemTra?kiemtra=0">Đăng
									Xuất</a></span></li>
					</ul>
>
				</c:if>
			</ul>
			<form action="phone" style="padding-left: 10%; position: relative;">
				<div class="input-group mb-3" id="formtk">
					<input id="myInput" class="form-control" type="text"
						placeholder="Tìm kiếm sản phẩm.." name="txtTimkiem">
					<div class="input-group-append">
						<button class="btn btn-light " type="submit">Go</button>
					</div>
				</div>
				<ul class="listSP bg-light" id="myList">
					<li id="litest"><img
						src="hinh/samsung-galaxy-s20-plus-400x460-fix-400x460.png"><a
						href="Html/html20.html">Samsung Galaxy S20+</a></li>
					<li><img src="hinh/oppo-a92.jpg"><a
						href="Html/htmlA92.html">OPPO A92</a></li>
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
		<div>
			<nav class="navbar bg-dark justify-content-center" id="nav2">
				<ul class="nav " id="reponsive">
					<li class="nav-item"><a class="nav-link" href="About">TRANG
							CHỦ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="Home">GIỚI THIỆU</a></li>
					<li class="nav-item"><a class="nav-link"
						href="phone">SẢN PHẨM</a></li>
					<li class="nav-item"><a class="nav-link" href="#">TIN TỨC</a>
					</li>
					<li class="nav-item" id="logo"><a class="nav-link"
						href="Html/Home.html"><img
							style="height: 80px; border-radius: 50px; margin: 0 10px;"
							src="hinh/python.jpg"></a></li>
					<li class="nav-item"><a class="nav-link" href="#">DỊCH VỤ</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">NHƯỢNG
							QUYỀN </a></li>
					<li class="nav-item"><a class="nav-link" href="LichSuController">THANH
							TOÁN</a></li>
					<li class="nav-item"><a class="nav-link" href="Admin">ADMIN</a>
					</li>
				</ul>
			</nav>
			<section>
				<div class="filter">
					<div class="row" style="padding: 0px 15px;">
						<table class="table table-bordered">
							<tbody>
								<tr>
								<c:forEach items="${loai}" var="c">
								<td id="samsung	"><a href="phone?maloai=${c.maloai}" class=""><img src="${c.anhloai}" /></a></td>
								</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row" id="lc">
						<p style="padding-right: 10px;">Chọn mức giá:</p>
						<a href="#">Dưới 2 triệu</a> <a href="#">từ 2 - 4 triệu</a> <a
							id="4_7" href="#">từ 4 - 8 triệu</a> <a href="#">từ 8 - 15
							triệu</a> <a id="15_" href="#">trên 15 triệu</a> <input
							style="margin: 5px 5px 0px 0px;" type="checkbox"> <a
							href="#">Mới</a> <input style="margin: 5px 5px 0px 0px;"
							type="checkbox"> <a href="#">Trả góp 0%</a> <input
							style="margin: 5px 5px 0px 0px;" type="checkbox"> <a
							href="#">Độc quyền</a>
					</div>

					<ul class="homeproduct" id="homeproduct">
						<c:forEach items="${phone}" var="c">
							<li class="item"><a href="Html/htmlA92.html"> <img
									width="180" height="180" src="${c.anh}">
									<h3>${c.tendienthoai}</h3>
									<div class="price">
										<strong value>6.990.000₫</strong>
										<a href="add?makh=${khachhang.getMakh()}&tendienthoai=${c.tendienthoai}$&gia=${c.gia}&anh=${c.anh}&madienthoai=${c.madienthoai}">Đặt mua</a>
									</div>
									<div class="promo noimage">
										<p>Tặng 2 suất mua Đồng hồ thời trang giảm 40% (kh&#244;ng
											&#225;p dụng th&#234;m khuyến m&#227;i kh&#225;c)</p>
									</div> <label class="installment">Trả góp 0%</label>
							</a></li>
						</c:forEach>

					</ul>
			</section>
			<footer class="navbar navbar-expand-sm bg-dark" id="footer">
				<div class="col-md-1 ">
					<a> <img src="hinh/python.jpg">
					</a>
				</div>
				<div class="col-md-2">
					<a href="#">Chính sách bảo hành</a> <br> <a href="#">Chính
						sách đổi trả</a>
				</div>
				<div class="col-md-2">
					<a href="#">Hướng dẫn mua online</a> <br> <a href="#">Nội
						quy cửa hàng</a>
				</div>
				<div class="col-md-2">
					<a href="#">Phương thức thanh toán</a> <br> <a href="#">Phương
						thức vận chuyển</a>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3" id="imgf">
					<a href=""><img src="hinh/fb.png"> </a> <a href=""><img
						src="hinh/tw.png"> </a> <a href=""><img src="hinh/y.png">
					</a>
				</div>
			</footer>
		</div>
	</div>
</body>

</html>