<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//아이디 찾기 버튼 클릭시 ajax통신이 이뤄지는 페이지
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("memName");
	String email=request.getParameter("memEmail");
	MemberDao dao=MemberDao.getInstance();
	String id=dao.findId(name, email);
%>
{"id":"<%=id %>"}