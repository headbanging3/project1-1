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

<style>
	.hide {
		display:none;
	}
	#bg{
		margin-left:-255px;
	}
</style>

<jsp:include page="index_navbar.jsp"></jsp:include>

<div class="container">
	
<div class="container">
	<h3>메인 페이지 입니다.</h3>
	
	<div id="bg" class="col-xs-12">
	<ul class="pagination">
		<li class="<%=manager%>"><a href="manager/">관리자페이지</a></li>
		<li><a href="user_page/index.jsp">유저페이지</a></li>
	</ul>
		<img src="resource/nike/나이키.png"  />
		<img src="resource/nike/나이키2.png"  />
		<img src="resource/nike/나이키3.png"  />
	</div>
</div>	
	
</div>





</body>
</html>
