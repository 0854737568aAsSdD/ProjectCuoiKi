<%@page import="com.dmt.bean.KhachHangBean"%>
<%@page import="com.dmt.bean.LichSuBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>History</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">

</head>
<%
ArrayList<LichSuBean> list = (ArrayList<LichSuBean>) request.getAttribute("history");
KhachHangBean kh = (KhachHangBean) session.getAttribute("khachhang");
%>
<body>
	<div class="container">
		<div class="navbar">
			<div class="logo">
				<a href="phone"><img
					src="hinh/python.jpg"
					width="100px"></a>
			</div>
			<nav>
				<ul id="MenuItems">
				</ul>
			</nav>
		</div>
	</div>
	<%
	if (kh != null) {
	%>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">Lịch Sử Mua Hàng</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center">Lịch Sử Chi Tiết</h3>
					<table>
						<tr>
							<td>
								<h4>
									Tên Khách Hàng:
									<%=kh.getHoten()%>
								</h4>
							</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th>
									<th>&nbsp;</th>
									<th>Tên Sách</th>
									<th>Số Lượng</th>
									<th>Giá</th>
									<th>Ảnh</th>
									<th>Thời Điểm Mua</th>
									<th>Tình Trạng Đơn Hàng</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<%
							for (LichSuBean sb : list) {
							%>
							<tbody>
								<tr class="alert" role="alert">
									<td></td>
									<td></td>
									<td>
										<div class="email">
											<span
												style="font-family: serif; font-size: 20px; color: blue;"><%=sb.getTendienthoai()%></span>
										</div>
									</td>
									<td>
										<div class="email">
											<span
												style="font-family: serif; font-size: 20px; color: red;"><%=sb.getSoluong()%></span>
										</div>
									</td>
									<td>
										<div class="email">
											<span
												style="font-family: serif; font-size: 20px; color: green;"><%=sb.getGia()%></span>
										</div>
									</td>

									<td>
										<div class="img"
											style="background-image: url(<%=sb.getAnh()%>);"></div>
									</td>
									<td>
										<div class="email">
											<span
												style="font-family: serif; font-size: 20px; color: blue;"><%=sb.getDate()%></span>
										</div>
									</td>
									<td>
										<%
										if (sb.getDamua() == 0) {
										%>
										<div class="email">
											<span
												style="font-family: serif; font-size: 20px; color: red;">
												<a href="ThanhToanController"> Chờ Xử Lý</a>
											</span>
										</div> <%
 } else if (sb.getDamua() == 1) {
 %>
										<div class="email">
											<span
												style="font-family: serif; font-size: 20px; color: red;">Đang Vận Chuyển
												</span>
										</div> <%
 }
 %>
									</td>
								</tr>

							</tbody>
							<%
							}
							%>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
	} else {
	%>
	<h1 style="text-align: center;">Bạn cần đăng nhập để thực hiện
		chức năng này</h1>
	<a href="home" style="text-align: center;">Đăng Nhập Ngay</a>
	<%
	}
	%>


</body>
</html>
