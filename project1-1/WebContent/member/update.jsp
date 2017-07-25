<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="acorn.dto.MemberDto"/> 
<jsp:setProperty property="*" name="dto"/>   
<%
	
	MemberDao.getInstance().update(dto);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/update.jsp</title>
</head>
<body>

<script>
	alert(" 회원 정보를 수정했습니다.")
	location.href="info.jsp";
</script>

</body>
</html>