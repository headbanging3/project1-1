<%@page import="acorn.dto.ItemDto"%>
<%@page import="java.util.List"%>
<%@page import="acorn.dao.ItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String grid = "";
	String indent = "";
	
	List<ItemDto> itemList =ItemDao.getInstance().getItemList();
	String root =request.getSession().getServletContext().getRealPath("/upload/");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="inc/header.jsp"></jsp:include>        
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
                                               <%for(int i=0;i<itemList.size();i++){
                                            	   	if(i>3) break;
													ItemDto item = itemList.get(i);
													if(i==1) {
														grid="alpha";
														indent="indent-left";
													}else if(i==2){
														grid="";
														indent="indent3";
													}else{
														grid="omega";
														indent="indent-right";
													}				
												%>
													<article class="grid_4 <%=grid%>">
	                                                      <div class=<%=indent %>>
	                                                          <figure class="frame2 p2"><img src="/upload/<%=item.getMain_Img() %>" alt="" /></figure>
	                                                          <p class="color-4 prev-indent-bot"><%=item.getPname() %></p>
	                                                          <p><%=item.getComments() %></p>
	                                                          <div class="wrapper">
	                                                          	<span class="price fleft"><%=item.getPrice() %>원</span>
	                                                              <a class="button fright" href="detail.jsp">Read More</a>
	                                                          </div>
	                                                      </div>
	                                                </article>
												<%} %><!-- 
                                                    <article class="grid_4 alpha">
                                                        <div class="indent-left">
                                                            <figure class="frame2 p2"><img src="images/nike1.png" alt="" /></figure>
                                                            <p class="color-4 prev-indent-bot">구려 사지마</p>
                                                            <p>비싸긴 더럽게비싸</p>
                                                            <div class="wrapper">
                                                            	<span class="price fleft">$45.99</span>
                                                                <a class="button fright" href="detail.jsp">Read More</a>
                                                            </div>
                                                        </div>
                                                    </article>
                                                
                                                    <article class="grid_4">
                                                        <div class="indent3">
                                                            <figure class="frame2 p2"><img src="images/nike2.png" alt="" /></figure>
                                                            <p class="color-4 prev-indent-bot">고추장 조던</p>
                                                            <p>이건 좀 낫네</p>
                                                            <div class="wrapper">
                                                            	<span class="price fleft">$54.99</span>
                                                                <a class="button fright" href="detail.jsp">Read More</a>
                                                            </div>
                                                        </div>
                                                    </article>
                                                    <article class="grid_4 omega">
                                                        <div class="indent-right">
                                                            <figure class="frame2 p2"><img src="images/nike3.png" alt="" /></figure>
                                                            <p class="color-4 prev-indent-bot">난 줘도 안신어</p>
                                                            <p>편해보이긴함</p>
                                                            <div class="wrapper">
                                                            	<span class="price fleft">$38.99</span>
                                                                <a class="button fright" href="#">Read More</a>
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>
                                                <div class="wrapper">
                                                    <article class="grid_4 alpha">
                                                        <div class="indent-left">
                                                            <figure class="frame2 p2"><img src="images/nike4.png" alt="" /></figure>
                                                            <p class="color-4 prev-indent-bot">비싼실내화</p>
                                                            <p>축구용</p>
                                                            <div class="wrapper">
                                                            	<span class="price fleft">$45.99</span>
                                                                <a class="button fright" href="#">Read More</a>
                                                            </div>
                                                        </div>
                                                    </article>
                                                    <article class="grid_4">
                                                        <div class="indent3">
                                                            <figure class="frame2 p2"><img src="images/nike5.png" alt="" /></figure>
                                                            <p class="color-4 prev-indent-bot">그냥 주면 신음</p>
                                                            <p>비올때 신는용</p>
                                                            <div class="wrapper">
                                                            	<span class="price fleft">$54.99</span>
                                                                <a class="button fright" href="#">Read More</a>
                                                            </div>
                                                        </div>
                                                    </article>
                                                    <article class="grid_4 omega">
                                                        <div class="indent-right">
                                                            <figure class="frame2 p2"><img src="images/nike6.png" alt="" /></figure>
                                                            <p class="color-4 prev-indent-bot">이게젤낫다</p>
                                                            <p>이거사라 나이키 공홈에서</p>
                                                            <div class="wrapper">
                                                            	<span class="price fleft">$38.99</span>
                                                                <a class="button fright" href="#">Read More</a>
                                                            </div>
                                                        </div>
                                                    </article>-->
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
	<jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>