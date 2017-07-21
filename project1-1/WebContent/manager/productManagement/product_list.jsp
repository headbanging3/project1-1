
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
<jsp:include page="../menu.jsp"/>

<h3>등록상품 목록입니다.</h3>
<table>
	<thead>
		<tr>
			<th>상품번호</th>
			<th>상품이름</th>
			<th>가격</th>
			<th>재고</th>
			<th>등록일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach  var="item" items="${itemList}">
			<tr>
				<td>${item.pno}</td>
			  	<td>${item.pname }</td>
				<td>${item.price }</td>
				<td>${item.stock }</td>
				<td>${item.regdate }</td>
				<td><a href="product_modified.do?pno=${item.pno }">수정</a>
				<td><a href="product_delete.do?pno=${item.pno }">삭제</a></td> 
			</tr>
		</c:forEach>
	</tbody>
</table>
 	

<a href="regist_form.do">상품등록</a>
</body>
</html>