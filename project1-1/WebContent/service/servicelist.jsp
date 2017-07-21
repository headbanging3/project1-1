<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<title>나의 문의 내역</title>
<style>
#content.global_content {width:1130px;padding:0 40px;}
.global_content:after {content:'';display:block;clear:both;}
.global_content .global_mypage_lnb {float:left;width:180px;padding:10px 0 60px;}
.global_content .global_mypage_lnb .global_nav_tit {margin-bottom:11px;}
.global_content .global_mypage_lnb .global_nav_tit h2 {font-size:18px;font-weight:normal;}
.global_content .global_mypage_lnb .global_nav_tit span {display:inline-block;margin-right:16px;width:50px;height:22px;line-height:23px;text-align:center;vertical-align:2px;font-size:12px;font-weight:bold; color:#fff; background:#000; border-radius:2px; }
.global_content .g_title {margin-top:30px;}
.global_content .g_title + .g_tbl_noti {margin-top:20px;}

.global_mypage_lnb ul:after {display:block; clear:both; content:"";}
	.global_mypage_lnb ul {padding:15px 0;border-top:1px solid #d9d9d9;}
	.global_mypage_lnb ul li {padding:5px 0;}
	.global_mypage_lnb ul li a {color:#fa5400;}
	.global_mypage_lnb ul li:last-child {margin-bottom:0;}
	.global_mypage_lnb ul li a {color:#111;}
	.global_mypage_lnb ul li a.active,
	.global_mypage_lnb ul li a.is_active {font-weight:bold;color:#fa5400;}

.wrapper{position: absolute; top: 110px; left: 210px;}
</style>
</head>
<body>
<jsp:include page="../index_navbar.jsp"></jsp:include>

<div id="content" class="global_content inquiry">
	<div class="global_mypage_lnb">
		<div class="global_nav_tit">
			<h2><span> 일반회원</span><strong>${id }</strong>님</h2>
		</div> 
		<ul>
			<li><a href="#">주문배송</a></li>
			<li><a href="#">취소/교환/반품</a></li>
			<li><a href="#">매장재고 예약 서비스</a></li>
			<li><a href="#">THE DRAW 응모내역</a></li>
		</ul>
		<ul>
			<li><a href="#">위시리스트</a></li>
			<li><a href="#">나의 예치금</a></li>
			<li><a href="#">나의 MiLE</a></li>
			<li><a href="#">나의 프로모션 코드</a></li>
			<li><a href="#">나의 상품리뷰</a></li>
			<li><a href="#">영수증 신청/발급</a></li>
		</ul>
		<ul>
			<li><a href="service.do">1:1 E-mail 문의</a></li>
		</ul>
		<ul>
			<li><a href="#">회원정보관리</a></li>
		</ul>
	</div>
</div>
<div class="wrapper">
<div class="page-header">
	<h1>마이페이지 <small>나의 문의 내역</small></h1>
</div>
<table class="table table-striped table-bordered table-hover">
    <thead>
        <tr>
            <th>번호</th>
            <th>문의유형</th>
            <th>제목</th>
            <th>등록일자</th>
            <th>처리상태</th>
        </tr>
    </thead>
     <tbody>
         <c:forEach var="tmp" items="${list }">
          	<tr>
          		<td>${tmp.rnum }</td>
          		<td>${tmp.type }</td>
          		<td><a href="servicedetail.do?rnum=${tmp.rnum}">${tmp.title }</a></td>
          		<td>${tmp.regdate }</td>
          		<c:choose>
          			<c:when test="${tmp.state ne false }">
          				<td>처리완료</td>
          			</c:when>
          			<c:otherwise>
          				<td>미처리</td>
          			</c:otherwise>
          		</c:choose>
          	</tr>
         </c:forEach>
         
         <tr class="success">
             <td>4</td>
             <td>데이터2</td>
             <td>데이터3</td>
             <td>데이터4</td>
             <td>데이터5</td>
         </tr>
         <tr class="danger">
             <td>5</td>
             <td>데이터2</td>
             <td>데이터3</td>
             <td>데이터4</td>
             <td>데이터5</td>
         </tr>
     </tbody>
</table>
</div>
</body>
</html>