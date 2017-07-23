<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 디테일</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<link rel="stylesheet" href="sidebar.css" />
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<div class="wrapper">
	<div class="container">
		<div class="page-header">
		  <h1>나의 문의 내역 <small>${resultDto.type }</small></h1>
		</div>
		<div class="panel panel-info">
			<div class="panel-heading">
				<p>${resultDto.title }</p>
			</div>
			<div class="panel-body">
				<p>${resultDto.content }</p>
			</div>
			<div class="panel-footer">
				<p>${resultDto.regdate }</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>