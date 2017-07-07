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


img {
	width: 100%;
}

#bg {
	background-color: #000;
	color: #fff;
	position : absolute;
	margin-top: 140px;
	margin-left: 230px;
	font-size: 20px;
}

footer {
	width: 100%;
}

.phone-numb {
	display: inline-block;
	font-size: 42px;
	line-height: 1.2em;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	letter-spacing: -1px;
	margin-top: -4px
}

.phone-numb span {
	display: inline-block;
	font-size: 28px;
	color: #949494;
	padding-top: 3px
}

.list-services {
	padding: 0
}

.list-services li {
	float: left;
	padding: 0 0 0 20px
}

.list-services li:first-child {
	padding: 0
}

.list-services li a {
	display: block;
	width: 60px;
	height: 45px;
	background: url(../images/social-icons.png) left top no-repeat;
}

.list-services li a.item-2 {
	background-position: -80px 0
}

.list-services li a.item-3 {
	background-position: -160px 0
}

.list-services li a.item-4 {
	background-position: -240px 0
}

.footer-top {
	padding: 20px 30px;
	border-top: 1px solid #2c2c2c;
	background-color: #1d1d1d;
}

.footer-bottom {
	padding: 40px 0 60px;
	background-color: #1d1d1d;
	border-top: 1px solid #2c2c2c;
	text-align: center;
}
.pagination{
	background-color: #000;
}
.pagination li{
	background-color: #000;
}
#bg{
	background-color: #000;
}
#bg2{
	background-color: #000;
	color: #fff;
	position : absolute;
	margin-top: 140px;
	margin-left: 100px;
	font-size: 20px;
}
#animal{
	position:absolute;
	width:15%;
	margin-top: 70px;
	margin-left: 100px;
}

.a { font-family: 'Indie Flower', cursive; font-size: 100px; text-align:center;}

</style>
</head>

<body>
<jsp:include page="index_navbar.jsp"></jsp:include>


<div>
	<div>
	<h3 class="a">nike</h3>
	<a id="bg2" class="btn" href="user_page/index.jsp">구매하기</a>
	<a id="bg" class="btn <%=manager %>" href="manager/" role="button">관리자페이지</a>
	<img id="animal" src="resource/nike/애니멀.png" />
	<img src="resource/nike/나이키.png"  />
	
	</div>
	
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
	<footer>
		<div class=footer-top></div>
		<div class=footer-bottom></div>
	</footer>
</body>
</html>
