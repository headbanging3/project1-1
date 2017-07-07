<%@page import="java.util.List"%>
<%@page import="acorn.dto.ServiceDto"%>
<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int listnum = Integer.parseInt(request.getParameter("mem_num"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 내역</title>
<style>
.container {
	margin: 0 auto;
	margin-top: 60px;
	text-align: center;
}

.panel-body {
	height: 400px;
	padding: 50px;
}
</style>
</head>
<body>
	<%
		MemberDao dao = MemberDao.getInstance();
		List<ServiceDto> list = dao.mysergetList(listnum);
	%>
	<jsp:include page="../index_navbar.jsp"></jsp:include>
	<div class="container">
		<h3>나의 문의 내역</h3>
		<div class="panel panel-default">
			<%
				for (ServiceDto tmp : list) {
			%>
				<div class="panel-heading">
					<p><%=tmp.getTitle() %></p>
				</div>
				<div class="panel-body">
					<p><%=tmp.getS_content()%></p>
				</div>
				<div class="panel-footer">
					<p><%=tmp.getRegdate()%></p>
				</div>
			<%
				}
			%>
		</div>
	</div>

</body>
</html>