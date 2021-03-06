<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath=(String)request.getContextPath();
	response.sendRedirect(cPath+"/index.jsp");
	String id =(String) session.getAttribute("id");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.nikerogo{
		width:50px;
	
		display:inline-block;
	}
</style>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.min.css?ver=1" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/custom.css" />
</head>
<body>
<!-- navbartop -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        
      </button>
      
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a  href="<%=cPath %>/index.jsp"><img class="nikerogo" src="<%=cPath %>/resource/nike/나이키로고.png" /></a></li>
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      	<%if(id != null) {%>
      	  <li><a href="<%=cPath %>/member/info.do"><%=id %> 님</a></li>
      	  <li><a href="<%=cPath %>/popup/logout.do"> 로그아웃 </a></li>
      	<%} else { %>
	      <li><a href="javascript:showPopup()">회원가입/로그인</a></li>
	    <%} %>
	      <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">고객센터 <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="#">BEST FAQ</a></li>
	            <li><a href="<%=cPath%>/service/qnalist.do">상품문의</a></li>
	            <li><a href="<%=cPath%>/service/serviceinsertform.do">문의하러 가기</a></li>
	            <li class="divider"></li>
        	  </ul>
     	   </li>
     	 </ul>
   	 </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- navbartop end -->

<!-- navbarmiddle -->
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button type="button" class="btn btn-default" onClick=menuClick('userMain');>Left</button>
  </div>
  <div class="btn-group" role="group">
    <button type="button" class="btn btn-default" onClick=menuClick('shop');>Board1</a></button>
  </div>
  <div class="btn-group" role="group">
    <button type="button" class="btn btn-default" onClick=menuClick();>Right</button>
  </div>
</div>
<!-- navbarmiddle end -->
<script src="resource/js/jquery-3.2.0.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script>

 	//팝업 띄우는 함수 
	function showPopup(){
		window.open("<%=cPath%>/popup/signinform.do","팝업창","width=400,height=300,top=200,left=700");
	}
 	
 	// 팝업을 닫는 함수
	function closePopup() {
		 window.close();
	}
 	
 	function menuClick(menu) {
 		if(menu=='userMain'){			
 			location.href='<%=cPath %>/userpage/index.jsp';
 		}	
 		if(menu=='shop'){	
 			//alert(menu);
 			location.href='<%=cPath %>/userpage/shop/shop.do';
 		}	
 		
 	}

</script>
</body>
</html>