<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../inc/header.jsp"></jsp:include>        
<style>
img{
	margin-left:30px
}

</style>
<!-- content -->
    <section id="content">
        <div class="bg-top">
        	<div class="bg-top-2">
                <div class="bg">
                    <div class="bg-top-shadow">
                        <div class="main">
                            <div class="box">
                                <div class="padding">
                                    <div class="container_12">
                                        <div class="wrapper">
                                            <div class="grid_12">
                                            	<div class="indent-left p2">
                                                	<h3 class="p0">개간지 운동화 비쌈</h3>
                                                </div>                                                
                                                <div class="wrapper">
                                                <c:forEach var="tmp" items="${itemList }">                                                	
													<article class="grid_4 ${tmp.grid}">
                                                      <div class="${tmp.indent}" >
                                                          <figure class="frame2 p2"><img src="../../upload/${tmp.main_Img}" alt="" /></figure>
                                                          <p class="color-4 prev-indent-bot">${tmp.pname}</p>
                                                          <p>${tmp.comments}</p>
                                                          <div class="wrapper">
                                                          	<span class="price fleft">${tmp.price}원</span>
                                                              <a class="button fright" href="detail.do?pno=${tmp.pno}">Read More</a>
                                                          </div>
                                                      </div>
	                                                </article>
												</c:forEach> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
        </div>
	</section>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
</body>
</html>