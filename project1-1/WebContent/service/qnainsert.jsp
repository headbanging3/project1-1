<%@page import="acorn.dao.MemberDao"%>
<%@page import="acorn.dto.QnaListDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title=request.getParameter("title");
	int pdnum=1179;
	String writer=(String)session.getAttribute("id");
	String content=request.getParameter("content");
	
	QnaListDto dto=new QnaListDto();
	dto.setQna_title(title);
	System.out.println(title);
	dto.setQna_pdnum(pdnum);
	dto.setQna_writer(writer);
	dto.setQna_content(content);
	boolean isSuccess=MemberDao.getInstance().qnaInsert(dto);
	
	String cPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품문의 등록</title>
</head>
<body>
<%if(isSuccess){ %>
<script>
	alert("글이 등록되었습니다.");
	location.href="<%=cPath%>/service/qnalist.jsp";
</script>
<%}else{ %>
<script>
	alert("뭔가 잘못 되었습니다.");
	location.href="<%=cPath%>/service/qnainsert_form.jsp";
</script>
<%} %>
</body>
</html>