<%@page import="acorn.dto.QnaListDto"%>
<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <h1 class="panel-title">${dto.qna_title }</h1>
        </div>
        <div class="panel-body">
            ${dto.qna_content }
        </div>
        <div class="panel-footer">
         	작성자 : <strong>${dto.qna_writer }</strong>
            <a href="javascript:deleteCheck()" id="delQna">글삭제</a>
        </div>
    </div>
</div>
<script src="../resource/js/jquery-3.2.0.js"></script>
<c:if test="${not empty sessionScope.id }">
	<c:if test="${sessionScope.id eq dto.qna_writer }">
		<script>
		$("#delQna").css("display","block");
	</script>
	</c:if>
</c:if>
<script>
function deleteCheck(){
	var isDelete=confirm("글을 삭제 하시겠습니까?");
	if(isDelete){
		location.href="qnadelete.do?listnum=${dto.qna_listnum }";
	}
}
</script>
</body>
</html>