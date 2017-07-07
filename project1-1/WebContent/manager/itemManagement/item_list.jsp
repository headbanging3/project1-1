<%@page import="acorn.dao.ItemDao"%>
<%@page import="acorn.dto.ItemDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String grid = "alpha";
	List<ItemDto> itemList =ItemDao.getInstance().getItemList();
	System.out.println((String)request.getContextPath());
	//String root =request.getSession().getServletContext().getRealPath("/upload/");
	
	System.out.println(application.getRealPath("/upload"));

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<%for(int i=0;i<itemList.size();i++){
	ItemDto item = itemList.get(i);
	//System.out.println(item.getPname()+item.getMain_Img());
%>
<%} %>

<a href="regist_form.jsp">상품등록</a>
</body>
</html>