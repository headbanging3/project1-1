<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//비밀번호 찾기 클릭시 이뤄지는 ajax통신 페이지
	request.getParameter("utf-8");
	String id=request.getParameter("memId");
	String phone=request.getParameter("memPhone");
	MemberDao dao=MemberDao.getInstance();
	String pwd=dao.findPwd(id, phone);
%>
{"pwd":"<%=pwd %>"}