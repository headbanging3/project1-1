<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<title>서비스등록</title>
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>
	<div class="page-header">
	  <h1>문의보내기</h1>
	</div>
<form action="serviceinsert.do" method="post" onsubmit="return checked();">
  <div class="form-group">
	<input type="hidden" id="mem_num" name="mem_num" value="${dto.mem_num }"/> 
  </div>
  <div class="form-group form-inline">
    <label for="phone"> 연락처</label>   
    <input type="text" class="form-control" id="phone" name="phone" value="${dto.phone }">
  </div>
  <div class="form-group form-inline">
    <label for="email"> 이메일</label>
    <input type="email" class="form-control" id="email" name="email" value="${dto.email }">
    <p class="help-block">답변을 받으실 메일주소를 입력해주세요.</p>
  </div>
  <div class="form-group">
  <label>질문유형선택
    <input type="radio" name="type" value="상품"> 상품
    <input type="radio" name="type" value="회원정보"> 회원정보
    <input type="radio" name="type" value="배송"> 배송
    <input type="radio" name="type" value="주문결제"> 주문결제
    <input type="radio" name="type" value="기타"> 기타
  </label>
  </div>
  <label for="title">제목</label><input type="text" class="form-control" id="title" name="title"/>
  <label>질문</label><textarea class="form-control" rows="5" name="content"></textarea>
  <button type="submit" class="btn btn-default">제출</button>
</form>
<script src="${pageContext.request.contextPath}/resource/js/jquery-3.2.0.js"></script>
<script>
	function checked(){
		var isTypeChk = $('input:radio[name=type]').is(':checked');
		if(!isTypeChk){
			alert('문의유형을 선택해주세요.');
			return false;
		}
		return true;
	}
	
</script>
</body>
</html>