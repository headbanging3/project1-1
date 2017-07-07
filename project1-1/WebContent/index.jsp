<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id =(String) session.getAttribute("id");
	String manager="hide";
	
	if(id==null)
		id="";
	if(id.equals("root"))
		manager = "";
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
</head>
<body>
<style>

	
	.hide {
		display:none;
	}
	#bg{
		margin-left:-245px;
	}
	img{
		width:100%;
	}

	.a { font-family: 'Indie Flower', cursive; 
		 font-size: 100px;}
</style>
</head>

<body>
<jsp:include page="index_navbar.jsp"></jsp:include>

<div class="container">
	<h3 class="a">nike</h3>
	<div id="bg" class="col-xs-12">
		<ul class="pagination">
			<li class="<%=manager%>"><a href="manager/">관리자페이지</a></li>
			<li><a href="user_page/index.jsp">유저페이지</a></li>
		</ul>
	</div>
</div>
<div>
	<img src="resource/nike/나이키.png"  />
	<img src="resource/nike/나이키2.png"  />
</div>
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2500">
	<!-- Carousel 하단의 동그란 nav 요소 -->
		<ol class="carousel-indicators">
			<!-- data-target="carousel 전체의 선택자" data-slide-to="컨텐츠 인덱스" -->
			<li data-target="#myCarousel" data-slide-to="0"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="resource/nike/나이키3.png" id="img"/>
				<div class="carousel-caption">
					
											
				</div>
			</div>
			<div class="item">
				<img src="resource/nike/나이키4.png" id="img"/>
				<div class="carousel-caption">
					
				</div>
			</div>
			<div class="item">
				<img src="resource/nike/나이키5.png" id="img"/>
				<div class="carousel-caption">
					
				</div>
			</div>
		</div>
</div>
</body>
</html>
