<%@page import="acorn.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//아이디 중복확인을 위한 ajax통신 페이지
 	String inputId=request.getParameter("id");
 	String id=MemberDao.getInstance().isOverlab(inputId);
 %>
{"id":"<%=id %>"}