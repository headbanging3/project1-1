<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품등록 페이지</title>
<style>
 .mg {
 	margin-left : 270px;
 }
</style>
</head>
<body>

<jsp:include page="../menu.jsp"/>
	<div class="mg">
		<form action="regist_confirm.do" method="post" enctype="multipart/form-data">
			상품명 : <input type="text" name="pname" /><br/>
			상품번호 : <input type="text" name="pno" /><br/>
			짧은설명 : <input type="text" name="comments" /><br/>
			상세설명 : <textarea rows="10" cols="20" name="content"></textarea><br/>
			가     격  : <input type="text" name="price" /><br/>
			수     량  : <input type="text" name="stock" /><br/>
			메인 이미지 : <input type="file" name="mainImg"><br/>
			서브이미지1 : <input type="file" name="subImg1"><br/>
			서브이미지2 : <input type="file" name="subImg2"><br/>
			서브이미지3 : <input type="file" name="subImg3"><br/>
			서브이미지4 : <input type="file" name="subImg4"><br/>
			서브이미지5 : <input type="file" name="subImg5"><br/>
			서브이미지6 : <input type="file" name="subImg6"><br/>
			<input type="submit"/>
		</form>
	</div> 
</body>
</html>