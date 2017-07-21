<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../inc/header.jsp"></jsp:include>    
<!-- content -->
    <section id="content">
        <div class="bg-top">
        	<div class="bg-top-2">
                <div class="bg">
                    <div class="bg-top-shadow">
                        <div class="main">
                            <div class="gallery p3">
                            	<div class="wrapper indent-bot">
                                    <div id="gallery" class="content">
                                       <div class="wrapper">
                                           <div class="slideshow-container">
                                                <div id="slideshow" class="slideshow"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="thumbs" class="navigation">
                                        <ul class="thumbs noscript">
                                            <li>
                                                <a class="thumb" href="../../upload/${item.sub_Img1}" title=""> <img  src="../../upload/${item.sub_Img1}" alt="" /><span></span> </a>
                                            </li> 
                                            <li>
                                                <a class="thumb" href="../../upload/${item.sub_Img2}" title=""> <img  src="../../upload/${item.sub_Img2}" /> <span></span></a>
                                            </li> 
                                            <li>
                                                <a class="thumb" href="../../upload/${item.sub_Img3}" title=""> <img  src="../../upload/${item.sub_Img3}" alt="" /> <span></span></a>
                                            </li> 
                                            <li>
                                                <a class="thumb" href="../../upload/${item.sub_Img4}" title=""> <img  src="../../upload/${item.sub_Img4}" alt="" /> <span></span></a>
                                            </li> 
                                            <li>
                                                <a class="thumb" href="../../upload/${item.sub_Img5}" title=""> <img  src="../../upload/${item.sub_Img5}" alt="" /> <span></span></a>
                                            </li> 
                                            <li>
                                                <a class="thumb" href="../../upload/${item.sub_Img6}" title=""> <img  src="../../upload/${item.sub_Img6}" alt="" /> <span></span></a>
                                            </li>           
                                        </ul>
                                    </div>
                                </div>
                                <div class="inner-2">
                                    <div class="wrapper">
                                        <span class="title t2 img-indent3">${item.pname}</span>
                                        <div class="extra-wrap indent-top2">
                                        	${item.content }, ${item.price }원
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
    
	<!--==============================footer=================================-->
  <jsp:include page="../inc/footer.jsp"></jsp:include>
    <script type="text/javascript">
		$(document).ready(function() { 
			$(".jCarouselLite").jCarouselLite({
				  btnNext: ".next",
				  btnPrev: ".prev",		  
				  speed: 400,		  
				  vertical: false,
				  circular: true,
				  easing:'easeOutQuart',
				  visible: 4,
				  start: 0,
				  scroll: 1
			 });
		});
	</script>
    <script type="text/javascript">
			$(window).load(function() {
			// We only want these styles applied when javascript is enabled
			$('div.navigation').css({'width' : '320px', 'float' : 'right'});
			$('div.content').css('display', 'block');
	
			// Initially set opacity on thumbs and add
			// additional styling for hover effect on thumbs
			var onMouseOutOpacity = 0.5;
			$('#thumbs ul.thumbs li span').opacityrollover({
				mouseOutOpacity:   onMouseOutOpacity,
				mouseOverOpacity:  0.0,
				fadeSpeed:         'fast',
				exemptionSelector: '.selected'
			});
			
			// Initialize Advanced Galleriffic Gallery
			var gallery = $('#thumbs').galleriffic({
				delay:                     7000,
				numThumbs:                 12,
				preloadAhead:              6,
				enableTopPager:            false,
				enableBottomPager:         false,
				imageContainerSel:         '#slideshow',
				controlsContainerSel:      '',
				captionContainerSel:       '',
				loadingContainerSel:       '',
				renderSSControls:          true,
				renderNavControls:         true,
				playLinkText:              'Play Slideshow',
				pauseLinkText:             'Pause Slideshow',
				prevLinkText:              'Prev',
				nextLinkText:              'Next',
				nextPageLinkText:          'Next',
				prevPageLinkText:          'Prev',
				enableHistory:             true,
				autoStart:                 7000,
				syncTransitions:           true,
				defaultTransitionDuration: 900,
				onSlideChange:             function(prevIndex, nextIndex) {
					// 'this' refers to the gallery, which is an extension of $('#thumbs')
					this.find('ul.thumbs li span')
						.css({opacity:0.5})
				},
				onPageTransitionOut:       function(callback) {
					this.find('ul.thumbs li span').css({display:'block'});
				},
				onPageTransitionIn:        function() {
					this.find('ul.thumbs li span').css({display:'none'});
				}
			});
		});
	</script>
	
</body>
</html>