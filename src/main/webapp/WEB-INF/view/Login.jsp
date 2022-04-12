<%@page import="com.dmt.utills.MyConstants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng nhập</title>
<link rel="shortcut icon" href="hinh/python.jpg" type="image/x-icon">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<script src="js/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/cssdn.css">
<script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						// tim kiem
						$("#myInput")
								.on(
										"keyup",
										function() {
											var d = 0;
											var dt = 0;
											var value = $(this).val()
													.toLowerCase();
											$("#myList li")
													.filter(
															function() {
																var k = $(this)
																		.text()
																		.toLowerCase()
																		.indexOf(
																				value) > -1;
																if (k == true) {
																	dt += 1
																	if (dt > 6) {
																		k = false
																	}
																}
																$(this).toggle(
																		k)
															});
											$("#myList")
													.attr('style',
															"display:block; position: absolute;")
											if ($(this).val() == "") {
												$("#myList").attr('style',
														'display:none');
											}
										});

						$("#dangK").on("click", function() {
							$("#myModal").modal();
						})

						// kiểm tra tên 

						var ten = $("#ten");
						var tbTen = $("#tbTen");
						function kiemtraten() {
							var re = /^[A-Z][A-Za-z]*( [A-Z][a-z]*)*$/
							if (ten.val() == "") {
								ten.attr("class", "form-control alert-danger")
								tbTen.html("Bắt buộc nhập");
								return false;
							}
							;
							if (!re.test(ten.val())) {
								ten.attr("class", "form-control alert-danger")
								tbTen.html("Viết hoa chữ cái đầu");
								return false;
							}
							ten.attr("class", "form-control alert-success")
							tbTen.html("*");
							return true;
						}
						ten.blur(kiemtraten);

						// kiểm tra số điện thoại
						var soDT = $("#soDT")
						var tbSDT = $("#tbSDT")
						function kiemtrasdt() {
							var re = /^\d{4}(\-\d{3}){2}$/
							if (soDT.val() == "") {
								soDT.attr("class", "form-control alert-danger")
								tbSDT.html("Bắt buộc nhập");
								return false;
							}
							;

							if (!re.test(soDT.val())) {
								soDT.attr("class", "form-control alert-danger")
								tbSDT.html("Nhập theo mẫu 0000-000-000");
								return false;
							}
							soDT.attr("class", "form-control alert-success")
							tbSDT.html("*")
							return true;
						}
						soDT.blur(kiemtrasdt);

						// Kiểm tra địa chỉ

						var diaC = $("#diaC")
						var tbDC = $("#tbDC")
						function kiemtradc() {
							if (diaC.val() == "") {
								diaC.attr("class", "form-control alert-danger")
								tbDC.html("Bắt buộc nhập")
								return false;
							}
							diaC.attr("class", "form-control alert-success")
							tbDC.html("*")
							return true;
						}
						;
						diaC.blur(kiemtradc);

						// kiểm tra tài khoản
						var email = $("#email")
						var tbE = $("#tbE")
						function kiemtrae() {
							var re = /^[a-z][a-z0-9]*@[a-z]+(\.[a-z]+){1,2}$/i;
							if (liTK.indexOf(email.val()) > -1) {
								email
										.attr("class",
												"form-control alert-danger")
								tbE.html("Tài khoản này đã được đăng ký")
								return false;
							}
							if (email.val() == "") {
								email
										.attr("class",
												"form-control alert-danger")
								tbE.html("Bắt buộc nhập")
								return false;
							}
							if (!re.test(email.val())) {
								email
										.attr("class",
												"form-control alert-danger")
								tbE.html("email không hợp lệ")
								return false;
							}
							email.attr("class", "form-control alert-success")
							tbE.html("*")
							return true;
						}
						;
						email.blur(kiemtrae);
						// kiểm tra mật khẩu

						var matK = $("#matK");
						var tbMK = $("#tbMK");
						function kiemtramk() {
							var re = /^[a-zA-Z0-9]{6,}$/;
							if (matK.val() == "") {
								matK.attr("class", "form-control alert-danger")
								tbMK.html("Bắt buộc nhập");
								return false;
							}
							if (!re.test(matK.val())) {
								matK.attr("class", "form-control alert-danger")
								tbMK
										.html("Mật khẩu không chứa kí tự đặc biệt và ít nhất 6 kí tự")
								return false;
							}
							matK.attr("class", "form-control alert-success")
							tbMK.html("*")
							return true;
						}
						;
						matK.blur(kiemtramk);

						// kiểm tra re mk
						var reMK = $("#reMK")
						var tbRMK = $("#tbRMK")
						function kiemtrarmk() {
							if (reMK.val() != matK.val()) {
								reMK.attr("class", "form-control alert-danger")
								tbRMK.html("Mật khẩu không khớp")
								return false;
							}
							reMK.attr("class", "form-control alert-success")
							tbRMK.html("*")
							return true;
						}
						;
						reMK.blur(kiemtrarmk);
						var liTK = []
						var liMK = []
						var tbC = $("#tbC")
						$("#save")
								.on(
										"click",
										function() {
											var check = $("input[type='checkbox']:checked");
											if (check.length <= 0) {
												tbC
														.html("chấp nhận điều khoản")
												return false;
											}
											if (!kiemtraten() || !kiemtrasdt()
													|| !kiemtradc()
													|| !kiemtrae()
													|| !kiemtrae()
													|| !kiemtrarmk()) {
												$("#thongbao")
														.html(
																"Mời bạn nhập đầy đủ thông tin");
												return false;
											}
											liTK.push(email.val())
											liMK.push(matK.val())
											$("#save").attr('data-dismiss',
													'modal')
											$("#tc h3")
													.html(
															"Bạn đã đăng ký thành công")
											$("#tc").modal()
											return true;
										})

					});
</script>
</head>

<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-sm bg-dark justify-content-center"
			id="nav1">
			<ul class="navbar-nav">
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
				<li class="nav-item"><span><a href="Login">Đăng
							nhập </a></span></li>
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
		<nav class="navbar bg-dark justify-content-center" id="nav2">
			<ul class="nav ">
				<li class="nav-item"><a class="nav-link" href="About">TRANG
						CHỦ</a></li>
				<li class="nav-item"><a class="nav-link" href="Home">GIỚI
						THIỆU</a></li>
				<li class="nav-item"><a class="nav-link"
					href="Html/Products.html">SẢN PHẨM</a></li>
				<li class="nav-item"><a class="nav-link" href="#">TIN TỨC</a></li>
				<li><a href="Html/Home.html"><img
						style="height: 80px; border-radius: 50px; margin: 0 50px;"
						src="hinh/python.jpg"></a></li>

				<li class="nav-item"><a class="nav-link" href="#">DỊCH VỤ</a></li>
				<li class="nav-item"><a class="nav-link" href="#">NHƯỢNG
						QUYỀN </a></li>
				<li class="nav-item"><a class="nav-link" href="#">THANH
						TOÁN</a></li>
				<li class="nav-item"><a class="nav-link" href="Admin">ADMIN</a></li>
			</ul>
		</nav>
		<section>
			<div class="row justify-content-center">
				<h2>
					<caption style="color: while; font-family: 'Lobster', cursive;">Đăng
						nhập tài khoản</caption>
				</h2>
			</div>

			<div class="row justify-content-center">
				<p>Hãy nhập thông tin tài khoản của bạn vào form dưới đây</p>
			</div>
			<br>

			<div class="col-md-12 col-lg-12 col-xs-12" id="form">
				<form action="KiemTra" method="post">
					<div class="form-group">
						<div class="text-light" id="thongbaodn" style="text-align: center"></div>
					</div>
					<fieldset class="form-group">
						<input id="emailDN" type="text"
							class="form-control form-control-lg" value name="Email"
							placeholder="Email" required> <span id="tbEDN"
							class="text-light"></span>
					</fieldset>
					<fieldset class="form-group">
						<input id="matKDN" type="password"
							class="form-control form-control-lg" value name="password"
							placeholder="Mật khẩu" required> <span id="tbMK1"
							class="text-light"></span>
					</fieldset>
					<!-- <br>

                <button class="btn btn-info" id="dangN" type="button" style="width: 30%; margin-left: 120px;">Đăng nhập</button>
                <button class="btn btn-info" id="dangK" type="button" style="width: 30%; margin-left: 50px;;">đăng ký</button>
                <br> -->
					<div class="form-group">
						<div class="g-recaptcha" data-sitekey="<%=MyConstants.SITE_KEY%>">
						</div>

					</div>
					<div class="row">
						<div class="col-md-12 cold-lg-12 col-sm-12 col-xl-12">
							<input type="submit" class="btn btn-info" id="dangN"
								style="width: 30%;" value="Đăng Nhập">
							<button class="btn btn-info" id="dangK" type="button"
								style="width: 30%;">Đăng Ký</button>
						</div>
					</div>
				</form>
				<br>
				<p>Hoặc đăng nhập bằng</p>
				<a href="LoginFacebook"><img src="hinh/fb.png"></a> <a
					style="padding-left: 20px;" href=""><img
					src="hinh/google-512.png"></a> <br> <br>
				<p>
					Bạn quên mật khẩu nhấn <a href=""> <u> vào đây </u></a>
				</p>
			</div>

		</section>


		<footer class="navbar navbar-expand-sm" id="footer">
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
		<!-- The Modal -->
		<div class="modal fade" id="myModal" role="dialog">

			<div class="modal-dialog modal-lg">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h3 style="width: 100%; text-align: center;">Đăng kí Form</h3>
						<button type="button" class="close" data-dismiss="modal">×</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<form action="DangKy" method="post">
							<div class="form-group">
								<div class="text-danger" id="thongbao"
									style="text-align: center"></div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="ten">Họ tên</label> <input type="text"
										class="form-control" id="ten" placeholder="Nhập tên"
										name="HoTen"> <span id="tbTen" class="text-danger"
										name="hoten">*</span>
								</div>
								<div class="form-group col-md-6">
									<label for="soDT">Số điện thoại</label> <input type="text"
										class="form-control" id="soDT"
										placeholder="Nhập số điện thoại" name="SoDienThoai"> <span
										id="tbSDT" class="text-danger">*</span>
								</div>
							</div>
							<div class="form-group">
								<label for="diaC">Địa chỉ</label> <input type="text"
									class="form-control" id="diaC" placeholder="Nhập địa chỉ"
									name="DiaChi"> <span id="tbDC" class="text-danger"
									name="diachi">*</span>
							</div>
							<div class="form-group">
								<label for="email">Tài Khoản</label> <input type="email"
									class="form-control" id="email"
									placeholder="Nhập địa chỉ email" name="TenDangNhap"> <span
									id="tbE" class="text-danger">*</span>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="matK">Mật khẩu</label> <input type="password"
										class="form-control" id="matK" placeholder="Nhập mật khẩu"
										name="MatKhau"> <span id="tbMK" class="text-danger">*</span>
								</div>
								<div class="form-group col-md-6">
									<label for="reMK">Nhập lại mật khẩu</label> <input
										type="password" class="form-control" id="reMK"
										placeholder="Nhập lại mật khẩu"> <span id="tbRMK"
										class="text-danger">*</span>
								</div>
							</div>
							<div class="form-group">
								<div class="g-recaptcha"
									data-sitekey="<%=MyConstants.SITE_KEY%>"></div>

							</div>
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="check"
										value="1"> <label class="form-check-label" for="check"
										style="font-weight: 500;"> <i>Tôi đã đọc và đồng ý
											với Điều kiện và điều khoản sửa dụng</i><br> <span id="tbC"
										class="text-danger">*</span>
									</label>
								</div>
							</div>
							<input type="submit" class="btn btn-info" value="Đăng Ký">
						</form>
					</div>


				</div>
			</div>
		</div>
		<div class="modal fade" id="tc" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
					</div>
					<div class="modal-body">
						<h3 class="text-center">Bạn đã đăng ký thành công</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
ml>
