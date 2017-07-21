<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${isSuccess==1}">
		<p> 저장성공</p>
	</c:when>
	<c:otherwise>
		<p> 저장실패</p>
	</c:otherwise>
</c:choose>
<a href="product_list.do">상품 목록 보기</a>
</body>
</html>