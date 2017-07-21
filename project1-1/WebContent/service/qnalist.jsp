<%@page import="acorn.dto.QnaListDto"%>
<%@page import="acorn.dao.MemberDao"%>
<%@page import="java.util.List"%>

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
           		<c:choose>
           			<c:when test="${empty list }">
           				<tr>
           					<td colspan="5">게시글이 없습니다.</td>
           				</tr>	
           			</c:when>	
           			<c:otherwise>
           				<c:forEach var="tmp" items="${list }">
           					<tr>
			                    <td>${tmp.qna_listnum }</td>
			                    <td><a href="qnadetail.do?qna_listnum=${tmp.qna_listnum }">${tmp.qna_title }</a></td>
			                    <td>${tmp.qna_pdnum }</td>
			                    <td>${tmp.qna_writer }</td>
			                   	<td>${tmp.qna_regdate }</td>
			                </tr>
	      				</c:forEach>			
           			</c:otherwise>
           		</c:choose>
            </tbody>
        </table>
        <div class="panel-footer">
         	<div class="page_display">
				<c:choose>
					<c:when test="${startPageNum ne 1 }">
						<a href="list.do?pageNum=${startPageNum-1 }">[ 이전 ]</a>
					</c:when>
					<c:otherwise>
						<a class="muted" href="javascript:">[ 이전 ]</a>
					</c:otherwise>
				</c:choose>
			
				<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
					<c:choose>
						<c:when test="${i eq pageNum }">
							<a  class="active" href="list.do?pageNum=${i }">${i }</a>
						</c:when>
						<c:otherwise>
							<a href="list.do?pageNum=${i }">${i }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:choose>
					<c:when test="${endPageNum lt totalPageCount }">
						<a href="list.do?pageNum=${endPageNum+1 }">[ 다음 ]</a>
					</c:when>
					<c:otherwise>
						<a class="muted" href="javascript:">[ 다음 ]</a>
					</c:otherwise>
				</c:choose>
			</div>
            <a href="qnainsert_form.jsp" id="addQna">글작성</a>
        </div>
    </div>
</div>
<script src="../resource/js/jquery-3.2.0.js"></script>
<c:if test="${empty sessionScope.id }">
	<script>
		$("#addQna").css("display","none");
	</script>
</c:if>

</body>
</html>