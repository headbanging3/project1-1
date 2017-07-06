<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.container{
		margin: 0 auto;
		margin-top:60px;
		text-align:center;
	}
	#title{
		text-align:center;
	}
	#content{
		height:500px;
	}
	.btn{
		margin:0 20px;
		width:100px;
	}
	
</style>
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>
<div class="container">
	<h3>상품문의</h3>
	<div class="panel panel-default">
        <div class="panel-heading">
        	<input type="text" name="title" id="title" class="form-control" placeholder="제목"/>
        </div>
        <div class="panel-body">
           <label for="content">내용</label>
            <input type="text" name="contet" id="content" class="form-control"/>
        </div>
        <div class="panel-footer">
            <button id="addQna" class="btn btn-default">작성</button>
            <button id="cansel" class="btn btn-default">취소</button>
        </div>
    </div>
</div>
<script src="../resource/js/jquery-3.2.0.js"></script>
<script>
	$("#addQna").on("click",function(){
		location.href=""
		
	});
</script>
</body>
</html>