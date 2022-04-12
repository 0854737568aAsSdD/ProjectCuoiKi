<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Danh sach dien thoai</h1>
	<c:forEach items="${phone}" var="c">
		<img src="${c.anh }">
${c.tendienthoai }
</c:forEach>

</body>
</html>