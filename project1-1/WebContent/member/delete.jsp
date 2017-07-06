<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	MemberDao.getInstance().delete(id);
	session.invalidate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><strong><%=id %> 회원님 탈퇴 처리 되었습니다.</strong></p>
<a href="<%=request.getContextPath() %>">인덱스로 이동</a>
</body>
</html>