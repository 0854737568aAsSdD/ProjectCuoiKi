<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p> Form người dùng</p>
<c:url value="/DangKy" var="url" />
<form:form modelAttribute="user" method="post" action="${url}" enctype="multipart/form-data">
<p> Ten </p> <form:input path="Hoten"/>
 <p style="color: red;"> 
<p> DiaChi </p><form:input path="Diachi"/>
 <p style="color: red;"> 
 <p> SoDienThoai </p><form:input path="sdt"/>
 <p style="color: red;"> 
 <p> TenDangNhap </p><form:input path="tendn"/>
 <p style="color: red;"> 
 <p> matkhau </p><form:input path="matkhau"/>
 <p style="color: red;"> 
 
<button type="submit"> Submit</button>
</form:form>
</body>
</html>