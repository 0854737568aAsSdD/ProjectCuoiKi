<%@page import="com.dmt.bean.GioHangBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart-MinhKhaiBook</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.x.x/css/swiper.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	ArrayList<GioHangBean> a = (ArrayList<GioHangBean>) session.getAttribute("giohang");
	Long sotien = (Long) session.getAttribute("sotien");
	int index;
	if (a == null) {
		index = 0;
	} else {
		index = a.size();
	}
	%>
	<div class="container">
		<div class="navbar">
			<div class="logo">
				<a href="home"><img
					width="225px"></a>
			</div>
			<nav>
				<ul id="MenuItems">
					<li><a href="home">Home</a></li>
					<li><a href="home">Products</a></li>
					<li><a href="home">About</a></li>
					<li><a href="home">History</a></li>
					<li><a href="home">Account</a></li>
				</ul>
			</nav>
			<a href="Cart.jsp"><img
				src="https://raw.githubusercontent.com/0854737568aAsSdD/JavaNangCao/main/src/main/webapp/images/cart.png"
				width="30px" height="30px"></a> <img src="images/menu.png"
				class="menu-icon" onclick="menutoggle()">
		</div>
	</div>
	<c:if test="${not empty xacnhan}">
		<script type="text/javascript">
			$(window).on('load', function() {
				$('#myModal').modal('show');
			});
		</script>
	</c:if>
	<c:if test="${not empty kiemtra}">
		<script type="text/javascript">
			$(window).on('load', function() {
				$('#myModal123').modal('show');
			});
		</script>
	</c:if>
	<%
	if (index <= 0 || a == null) {
	%>
	<h3 style="text-align: center;">Giỏ Hàng Trống</h3>
	<div style="text-align: center;">
		<a href="phone"> Mua Thêm</a>

	</div>
	<%
	}
	%>
	<!-- -----------------cart item details------------------- -->
	<div class="small-container cart-page">
		<table>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Subtotal</th>
				<th><a href="DatMuaHangController">Đặt Hàng</a></th>
			</tr>
			<%
			for (int i = 0; i < index; i++) {
			%>
			<tr>
				<td>
					<div class="cart-info">
						<img src="<%=a.get(i).getAnh()%>">

						<div>
							<p><%=a.get(i).getTendienthoai()%></p>
							<p>
								<%=a.get(i).getMadienthoai()%>
							</p>
							<small>Price:$ <%=a.get(i).getGia()%></small> <br> <a
								href="handle?xoa=<%=i%>">Remove</a>
						</div>
					</div>
				</td>
				<td>
					<div class="row">
						<form action="number" method="get">
							<table>
								<tr>
									<td><input type="number"
										value="<%=a.get(i).getSoluong()%>" name="soluong" size="1"
										maxlength="4" class="no1" min="1"></td>
									<td><input type="hidden" value="<%=i%>" name="vitri">
									</td>
									<td><input type="submit" value="Update"></td>
								</tr>
							</table>
						</form>
					</div>
				</td>
				<td><%=a.get(i).getGia() * a.get(i).getSoluong()%></td>
			</tr>
			<%
			}
			%>


		</table>
		<%
		if (index > 0) {
		%>
		<div class="total-price">
			<table>
				<tr>
					<td>Subtotal</td>
					<td><%=sotien%>$</td>
				</tr>
				<tr>
					<td>Tax</td>
					<td>Free Ship</td>
				</tr>
				<tr>
					<td>Total</td>
					<td><%=sotien%>$</td>
				</tr>
			</table>

		</div>
		<%
		}
		%>
	</div>


	</div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<div class="modal-body">
					<h3 class="text-center">Bạn cần đăng nhập để thực hiện mua
						hàng</h3>
					<div style="text-align: center;">
						<a style="text-align: center;" href="Login"">Đăng Nhập Ngay</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal123" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<div class="modal-body">
					<h3 class="text-center">Bạn đã mua hàng thành công</h3>
					<div style="text-align: center;">
						<a href="LichSuController"">Xem Ngay</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- ------------footer----------- -->

	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<h3>Download Our App</h3>
					<p>Download App for Android and ios mobile phone</p>
					<div class="app-logo">
						<img src="images/play-store.png"> <img
							src="images/app-store.png">
					</div>
				</div>
				<div class="footer-col-2">
					<img
						src="http://www.minhkhai.com.vn/store2/images/minhkhai-logo.png">
					<p>“Để có văn hóa ẩm thực, không chỉ cần người sành ăn, mà còn
						cần đầu bếp giỏi. Để có văn hóa đọc, không chỉ cần người yêu sách,
						mà còn cần những quyển sách chất lượng.”</p>
				</div>

				<div class="footer-col-4">
					<h3>Follow us</h3>
					<ul>
						<li>Facebook</li>
						<li>Twitter</li>
						<li>Instagram</li>
						<li>Youtube</li>
					</ul>
				</div>
			</div>
			<hr>
			<p class="Copyright">Copyright 2021 - By MinhTuấn</p>
		</div>
		<!-- ------------------- js for toggle menu-------------- -->
</body>
</html>