<%@page import="acorn.dto.QnaListDto"%>
<%@page import="acorn.dao.MemberDao"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	List<QnaListDto> list=MemberDao.getInstance().getQnaList();
	String id=(String)session.getAttribute("id");
	System.out.println(id);
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
	#addQna{
		float:right;
	}
	
	h3{
		color:#fff;
	}
	tr{
		text-align:center;
	}
</style>
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>
<div class="container">
	<h3>상품문의 리스트</h3>
	<div class="panel panel-default">
        <div class="panel-heading">
            <h1 class="panel-title">Q&A는 저희가 책임지겠습니다!</h1>
        </div>
       
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>상품번호</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
            	<%if(list.size()==0){%>
            		<tr>
            			<td colspan="5">게시글이 없습니다.</td>
            		</tr>	
            	<%}else {
            		for(int i=0; i<list.size(); i++){
            			QnaListDto dto=list.get(i); %>
	                <tr>
	                    <td><%=dto.getQna_listnum() %></td>
	                    <td><a href="qnadetail.jsp?qna_listnum=<%=dto.getQna_listnum()%>"><%=dto.getQna_title() %></a></td>
	                    <td><%=dto.getQna_pdnum() %></td>
	                    <td><%=dto.getQna_writer() %></td>
	                   	<td><%=dto.getQna_regdate() %></td>
	                </tr>
                	<% }%>
            	<%}%>
            </tbody>
        </table>
        <div class="panel-footer">
           책임자 = 호궁환
            <a href="qnainsert_form.jsp" id="addQna">글작성</a>
        </div>
    </div>
</div>
<script src="../resource/js/jquery-3.2.0.js"></script>
<script>
	<%if(id==null){%>
		$("#addQna").css("display","none");
	<%}%>
	
	
	
</script>
</body>
</html>