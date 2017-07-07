<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int listnum=Integer.parseInt(request.getParameter("listnum"));
	boolean isSuccess=MemberDao.getInstance().qnaDelete(listnum);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(isSuccess){ %>
	<script>
		alert("게시글이 삭제되었습니다.");
		location.href="qnalist.jsp";
	</script>
<%}else{ %>
	<script>
		alert("잘못된 접근입니다.");
		location.href="qnadetail.jsp";
	</script>
<%} %>
</body>
</html>