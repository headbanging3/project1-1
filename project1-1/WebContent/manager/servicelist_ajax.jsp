<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<thead>
	<a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b>
		Add new categories</a>
	<tr>
		<th>ID</th>
		<th>제목</th>
		<th>날짜</th>
		<th class="text-center">처리</th>
	</tr>
</thead>
<c:forEach var="tmp" items="${list }">
	<tr>
		<td>${tmp.mem_num }</td>
		<td>${tmp.title }</td>
		<td>${tmp.regdate }</td>
		<c:choose>
			<c:when test="${tmp.state ne false }">
				<td>처리완료</td>
			</c:when>
			<c:otherwise>
				<td>미처리상태</td>
			</c:otherwise>
		</c:choose>
	</tr>
</c:forEach>