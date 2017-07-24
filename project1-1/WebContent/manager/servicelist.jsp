<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/font-awesome.min.css" />
<title>서비스관리 페이지</title>
<style>
	div.container{
		display: inline-block;
		position: absolute;
		left: 300px;
	}
	div.dashboard2{
		background-color: #bdb;
		width: 200px;
		height: 200px;
		margin: 10px 30px;
		border-radius: 100%;
	    border: 20px solid #9d9;
	    padding: 20px; 
	    text-align: center;
	}
	div.row{
		padding: 0 50px;
	}
	.dashboard2 p{
		font-weight: bold;
		font-size: 2em;
		
	}
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container">
	<div class="row">
		<div class="col-xs-3 col-sm-4">
			<div class="dashboard2">
				<strong>상품</strong><br />
				<i class="fa fa-product-hunt fa-5x" aria-hidden="true"></i>
				<a href="#"><p>2</p></a>
			</div>
		</div>
		<div class="col-xs-3 col-sm-4">
			<div class="dashboard2">
				<strong>회원정보</strong>
				<i class="fa fa-id-card-o fa-5x" aria-hidden="true"></i>
				<a href="#"><p>2</p></a>
			</div>
		</div>
		<div class="col-xs-3 col-sm-4">
			<div class="dashboard2">
				<strong>A/S</strong><br />
				<i class="fa fa-wrench fa-5x" aria-hidden="true"></i>
				<a href="#"><p>2</p></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-3 col-sm-4">
			<div class="dashboard2">
				<strong>회원혜택/서비스</strong>
				<i class="fa fa-handshake-o fa-5x" aria-hidden="true"></i>
				<a href="#"><p>2</p></a>
			</div>
		</div>
		<div class="col-xs-3 col-sm-4">
			<div class="dashboard2">
				<strong>배송</strong><br />
				<i class="fa fa-truck fa-5x" aria-hidden="true"></i>
				<a href="#"><p>2</p></a>
			</div>
		</div>
		<div class="col-xs-3 col-sm-4">
			<div class="dashboard2">
				<strong>주문결제</strong>
				<i class="fa fa-credit-card fa-5x" aria-hidden="true"></i>
				<a href="#"><p>2</p></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>