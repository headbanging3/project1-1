<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/font-awesome.min.css" />
<title>서비스관리 페이지</title>
<style>
	div.container-fluid{
		display: inline-block;
		position: absolute;
		left: 250px;
	}
	div.dashboard2{
		background-color: #AAEDFC;
		color: #3458E0;
		width: 200px;
		height: 200px;
		margin: 10px 30px;
		border-radius: 100%;
	    border: 20px solid #7FF0FC;
	    padding: 20px; 
	    text-align: center;
	    display: inline-block;
	    position: relative;
	    box-shadow: 3px 3px 2px #ccc;
	}
	.dashboard2 p{
		font-weight: bold;
		font-size: 2em;
	}
	.custab{
	    border: 1px solid #ccc;
	    padding: 5px;
	    margin: 5% 0;
	    box-shadow: 3px 3px 2px #ccc;
	    transition: 0.5s;
    }
	.custab:hover{
	    box-shadow: 3px 3px 0px transparent;
	    transition: 0.5s;
    }
</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container-fluid">
<h2>새로올라온 </h2>
	<div class="row">
	<div class="dashboard2">
		<strong>상품</strong><br />
		<i class="fa fa-product-hunt fa-5x" aria-hidden="true"></i>
		<a href="#"><p id="product" name="상품"></p></a>
	</div>
	<div class="dashboard2">
		<strong>회원정보</strong>
		<i class="fa fa-id-card-o fa-5x" aria-hidden="true"></i>
		<a href="#"><p id="userinfo" name="회원정보"></p></a>
	</div>
	<div class="dashboard2">
		<strong>A/S</strong><br />
		<i class="fa fa-wrench fa-5x" aria-hidden="true"></i>
		<a href="#"><p id="as" name="A/S"></p></a>
	</div>		
	<div class="dashboard2">
		<strong>회원혜택/서비스</strong>
		<i class="fa fa-handshake-o fa-5x" aria-hidden="true"></i>
		<a href="#"><p id="service" name="서비스"></p></a>
	</div>
	<div class="dashboard2">
		<strong>배송</strong><br />
		<i class="fa fa-truck fa-5x" aria-hidden="true"></i>
		<a href="#"><p id="delivery" name="배송"></p></a>
	</div>
	<div class="dashboard2">
		<strong>주문결제</strong>
		<i class="fa fa-credit-card fa-5x" aria-hidden="true"></i>
		<a href="#"><p id="order" name="주문결제"></p></a>
	</div>
	</div>

    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
    	<c:forEach var="tmp" items="${list }">
    		<tr>
	            <th>ID</th>
	            <th>${tmp.title }</th>
	            <th>${tmp.content }</th>
	            <th class="text-center">Action</th>
    	    </tr>
    	</c:forEach>
        
    </thead>
            <tr>
                <td>1</td>
                <td>News</td>
                <td>News Cate</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Products</td>
                <td>Main Products</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>Blogs</td>
                <td>Parent Blogs</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
    </table>
    </div>
</div>


<script src="../resource/js/jquery-3.2.0.js"></script>
<script>
	$( document ).ready(function() {
	    console.log( "ready!" );
	    $.ajax({
	    	url:"servicecount_ajax.do",
	    	cache:false,
	    	success:function(data){
	    		var obj=JSON.parse(data);
	    		var productCount=obj.productCount;
	    		var userinfoCount=obj.userinfoCount;
	    		var asCount=obj.asCount;
	    		var serviceCount=obj.serviceCount;
	    		var deliveryCount=obj.deliveryCount;
	    		var orderCount=obj.orderCount;
				$("#product").text(productCount+"건");
				$("#userinfo").text(userinfoCount+"건");
				$("#as").text(asCount+"건");
				$("#service").text(serviceCount+"건");
				$("#delivery").text(deliveryCount+"건");
				$("#order").text(orderCount+"건");
	    	}
	    })
	});
	$('p').click(function(){
		var type=$(this).attr("name");
		console.log(type);
		$.ajax({
			url:"servicelist_ajax.do",
			method:"POST",
			data:{type:type},
			dataType:"json",
			success:function(data){
				
			}
		})
	})
</script>
</body>
</html>