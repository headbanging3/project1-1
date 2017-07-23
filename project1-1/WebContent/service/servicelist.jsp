<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<link rel="stylesheet" href="sidebar.css" />
<title>나의 문의 내역</title>
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<div class="wrapper">
	<div class="page-header">
		<h1>마이페이지 <small>나의 문의 내역</small></h1>
	</div>
	
	<table class="table table-striped table-bordered table-hover">
	    <thead>
	        <tr>
	            <th>번호</th>
	            <th>문의유형</th>
	            <th>제목</th>
	            <th>등록일자</th>
	            <th>처리상태</th>
	        </tr>
	    </thead>
	     <tbody>
	         <c:forEach var="tmp" items="${list }">
	          	<tr>
	          		<td>${tmp.rnum }</td>
	          		<td>${tmp.type }</td>
	          		<td><a href="servicedetail.do?rnum=${tmp.rnum}">${tmp.title }</a></td>
	          		<td>${tmp.regdate }</td>
	          		<c:choose>
	          			<c:when test="${tmp.state ne false }">
	          				<td>처리완료</td>
	          			</c:when>
	          			<c:otherwise>
	          				<td>미처리</td>
	          			</c:otherwise>
	          		</c:choose>
	          	</tr>
	         </c:forEach>
	         
	         <tr class="success">
	             <td>test</td>
	             <td>데이터2</td>
	             <td>데이터3</td>
	             <td>데이터4</td>
	             <td>데이터5</td>
	         </tr>
	         <tr class="danger">
	             <td>test</td>
	             <td>데이터2</td>
	             <td>데이터3</td>
	             <td>데이터4</td>
	             <td>데이터5</td>
	         </tr>
	     </tbody>
	</table>
</div>
</body>
</html>