<%@page import="acorn.dao.MemberDao"%>
<%@page import="acorn.dto.MemberDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		
	request.setCharacterEncoding("UTF-8");
	//로그인된 id 를 읽어온다
	String id=(String)session.getAttribute("id");
	// id 에 해당하는 회원정보 얻어오기
	MemberDto dto=MemberDao.getInstance().getData(id);
	
	String cPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member/private/info.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css"/>
</head>
<body>

<table class="table table-hover">
	<thead>
		<tr>
			<th>항목</th>
			<th>정보</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>아이디</th>
			<td><%=dto.getId() %></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=dto.getName() %></td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td><%=dto.getEmail() %></td>
		</tr>
		
		<tr>
			<th>전화번호</th>
			<td><%=dto.getPhone() %></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=dto.getAddr() %></td>
		</tr>
		<tr>
			<th>가입일</th>
			<td><%=dto.getRegdate() %></td>
		</tr>
	</tbody>
</table>
<ul>
	<li><a href="<%=cPath %>/member/updateform.do">가입 정보 수정</a></li><br>
	<li><a href="javascript:memberConfirm()">회원 탈퇴</a></li><br>
	<li><a href="<%=cPath %>">메인 페이지로 가기</a></li>
</ul>



<script>
	function memberConfirm(){
		var isDelete=confirm("탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="delete.do";
		}
	}
</script>
</body>
</html>