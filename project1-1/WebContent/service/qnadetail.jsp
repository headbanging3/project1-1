<%@page import="acorn.dto.QnaListDto"%>
<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int listnum=Integer.parseInt(request.getParameter("qna_listnum"));
	QnaListDto dto=MemberDao.getInstance().qnaDetail(listnum);
	String id=null;
	if(session.getAttribute("id")!=null)id=(String)session.getAttribute("id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품문의</title>
<style>
	.container{
		margin: 0 auto;
		margin-top:60px;
		text-align:center;
	}
	.panel-body{
		height:400px;
		padding:50px;
	}
	#delQna{
		float:right;
		display:none;
	}
</style>
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>
<div class="container">
	<h3>상품문의</h3>
	<div class="panel panel-default">
        <div class="panel-heading">
            <h1 class="panel-title"><%=dto.getQna_title() %></h1>
        </div>
        <div class="panel-body">
            <%=dto.getQna_content() %>
        </div>
        <div class="panel-footer">
            <%=dto.getQna_writer() %>
            <a href="qnadelete.jsp?listnum=<%=listnum %>" id="delQna">글삭제</a>
        </div>
    </div>
</div>
<script src="../resource/js/jquery-3.2.0.js"></script>

<%
if(id!=null){
if(id.equals(dto.getQna_writer())){%>
	<script>
		$("#delQna").css("display","block");
	</script>
<%}}%>
	

</body>
</html>