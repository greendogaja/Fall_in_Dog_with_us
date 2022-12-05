<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- ##### Footer Area End ##### -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
	
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    
    <!-- <script defer="defer" src="resources/js/jquery/jquery-3.2.1.min.js" ></script> -->
    <!-- Popper js -->
    <script defer="defer" src="resources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script defer="defer" src="resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script defer="defer" src="resources/js/plugins.js"></script>
    <!-- Active js -->
    <script defer="defer" src="resources/js/active.js"></script>
    <!-- home js -->
	<script src="resources/mLib/home.js"></script>
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">



</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- Subscribe Modal -->
    <div class="subscribe-newsletter-area">
        <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-body">
                        <h5 class="title">Subscribe to my newsletter</h5>
                        <form action="#" class="newsletterForm" method="post">
                            <input type="email" name="email" id="subscribesForm2" placeholder="Your e-mail here">
                            <button type="submit" class="btn original-btn">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-110 align-items-center">
                    <!-- Breaking News Area -->
                    <div class="col-12 col-sm-8">
                        <div class="breaking-news-area">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="aboutUs">Fall In Dog </a></li>
                                    <li><a href="noticeList">공지사항</a></li>
                                    <li><a href="adopt_procedure">입양안내 및 절차</a></li>
                                    <li><a href="dog_list_S">분양중 동물 </a></li>
                                    <li><a href="review">분양후기 </a></li>
                                    <li><a href="qna">1:1문의하기</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Top Social Area -->
                    <div class="col-12 col-sm-4">
                        <div class="top-social-area dologin">
                        	<c:if test="${empty loginID}">
                            <a href="loginf" data-toggle="tooltip" data-placement="bottom" title="로그인"><i class="fa fa-linkedin" style="font-size:30px" aria-hidden="true"></i></a>
                            <a href="joinf" data-toggle="tooltip" data-placement="bottom" title="회원가입"><i class="fa fa-user-plus" style="font-size:30px" aria-hidden="true"></i></a>
                        	</c:if>
                            <c:if test="${!empty loginID}">
                            ${loginNick}님 환영합니다
                            <a href="logout" data-toggle="tooltip" data-placement="bottom" title="로그아웃"><i class="fa fa-sign-out" style="font-size:30px" aria-hidden="true"></i></a>
			                      <div class="classynav" >
				                      <ul >
				                      	<li class="mhover" >
				                      		<i class="fa fa-cog " style="font-size:30px" aria-hidden="true"></i>
				                      		<ul class="dropdown mhover-content boradi " >
				                      			<li style="font-size:1rem;">MyPage</li>
												<li><a href="info" style="color:white;">회원정보</a></li>
												<li><a href="info?want=U&id=${loginID}" style="color:white;">내정보변경</a></li>
												<li><a href="qna" style="color:white;">1:1문의</a></li>
												<c:if test="${'admin' == loginID }">
												<li><a href="usearchlist" style="color:white;">회원관리</a></li>
												</c:if>
		                                    </ul>
				                      	</li>
				                      </ul>
			                      </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area text-center">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <a href="home" class="original-logo"><img src="resources/img/core-img/flogo.png" alt="" style="margin-right: 29px;"></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Nav Area -->
        <div class="original-nav-area" id="stickyNav">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justifyww">

                     

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" id="originalNav">
                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="#">폴인독</a>
                                        <ul class="dropdown">
                                            <li><a href="aboutUs">폴인독소개</a></li>
                                            <li><a href="contact">오시는길</a></li>
                                            <li><a href="noticeList">공지사항</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">입양안내 및 절차</a>
                                        <ul class="dropdown">
                                        	<li><a href="adopt_guide">입양 위탁 소개</a></li>
                                            <li><a href="adopt_procedure">입양 위탁 절차</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">입양목록 및 신청</a>
                                        <ul class="dropdown">
                                            <li><a href="dog_list_S">보호/입양중 목록</a></li>
                                            <li><a href="adopt_board">입양 신청</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">커뮤니티</a>
                                        <ul class="dropdown">
                                             <li><a href="reviewList">입양후기</a></li>
                                            <li><a href="freeList">자유게시판</a></li>
                                            <li><a href="shareList">나눔장터</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">고객센터</a>
                                        <ul class="dropdown">
                                            <li><a href="customerhome">자주하는질문</a></li>
                                            <li><a href="qna">1:1문의</a></li>
                                        </ul>
                                    </li>
                                    
                                </ul>

                                <!-- Search Form  -->
                                <div id="search-wrapper">
                                    <form action="#">
                                        <input type="text" id="search" placeholder="Search something...">
                                        <div id="close-icon"></div>
                                        <input class="d-none" type="submit" value="">
                                    </form>
                                </div>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
        <c:forEach var="main" items="${mainlist}">
         	<div class="single-hero-slide bg-img" style="background-image: url(${main.mainImg});">
                <div class="container h-40">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp" style="background-color:rgba(0, 0, 0, 0.3);">Fall in Dog</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="ndetail?nno=${main.nno}" style="background-color:rgba(0, 0, 0, 0.3);">${main.title }</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</c:forEach>
            <!-- Single Slide -->
      <!--  <div class="single-hero-slide bg-img" style="background-image: url(resources/img/bg-img/first.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp" style="background-color:rgba(0, 0, 0, 0.3);">Fall in Dog</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="#" style="background-color:rgba(0, 0, 0, 0.3);">올바른 반려동물문화를 <br>선도하는 폴인독</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            Single Slide
            <div class="single-hero-slide bg-img" style="background-image: url(resources/img/bg-img/second.png);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp" style="background-color:rgba(0, 0, 0, 0.3);">Fall in Dog</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="#" style="background-color:rgba(0, 0, 0, 0.3);">사단법인<br>반려동물협회 공식인증<br>안심분양센터</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            Single Slide
            <div class="single-hero-slide bg-img" style="background-image: url(resources/img/bg-img/third.png);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp" style="background-color:rgba(0, 0, 0, 0.3);">Fall in Dog</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="#" style="background-color:rgba(0, 0, 0, 0.3);"> 깨끗한 거리문화를 위해<br>배변봉투 무료나눔을<br>시작하였습니다</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper  clearfix ">
        <div class="container">
            <div class="row aligin-item-center paddtop-50 container-justify" >
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4 ">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">Fall in Dog</a>
                            <h4><a href="#" class="post-headline">ABOUT US</a></h4>
                            <p><bold>Fall in Dog는 안심하고 맡길 수 있습니다</bold><br> 안락사 없는 안심보호소로 안전하고 안심 할 수 있는 <br>공간을 제공합니다.</p>
                            <a href="aboutUs" class="btn original-btn">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                
	                <div class="col-12 col-md-6 col-lg-4">
	                    <div class="single-catagory-area clearfix mb-100">
	                        <img class="height-300 boradi" src="resources/img/blog-img/company.jpg" alt="">
	                        <!-- Catagory Title -->
	                        <div class="catagory-title height-300 boradi">
	                            <a href="adopt_procedure">입양안내</a>
	                        </div>
	                    </div>
	                </div>
	                <!-- Single Blog Area -->
	                <div class="col-12 col-md-6 col-lg-4">
	                    <div class="single-catagory-area clearfix mb-100">
	                        <img class="height-300 boradi" src="resources/img/blog-img/company2.jpg" alt="">
	                        <!-- Catagory Title -->
	                        <div class="catagory-title boradi">
	                            <a href="contact">오시는길</a>
	                        </div>
	                    </div>
	                </div>
                
            </div>
        </div>

        <div class="container">
        	<!-- 공지사항 -->
            <div class="row">
                <div class="col-12 col-lg-4">
                    <!-- Single Blog Area ############################### -->
                     <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 ">
                                <div class="single-blog-content">
                                    <h4><a href="noticeList" class="post-headlines" style="margin-bottom:2px;">공지사항</a></h4>
                                    <div class="line"></div>
								    <table class="tablecon">
									<tbody class="tcontens">
										<c:forEach var="notice" items="${noticelist}">
											<tr  onClick="location.href='ndetail?nno=${notice.nno}'">
												<td class="docur">${notice.title} <i class="fa fa-heart" aria-hidden="true"></i></td>
											</tr>
										</c:forEach>
									</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="col-12 col-lg-4">
                <!-- 자주묻는질문 -->
                     <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 ">
                                <div class="single-blog-content">
                                    <h4><a href="customerhome" class="post-headline" style="margin-bottom:2px;">자주하는질문</a></h4>
                                    <div class="line"></div>
                                    <table class="tablecon">
									<tbody class="tcontens">
										<c:forEach var="faq" items="${faqlist}">
											<tr  onClick="location.href='faqdetail?fno=${faq.fno}'">
												<td class="docur">${faq.title} <i class="fa fa-heart" aria-hidden="true"></i></td>
											</tr>
										</c:forEach>
									</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
               
            </div>
        </div>
    </div>
    
    <!--분양목록 -->
     <h1 style="text-align:center; padding-bottom:40px;"><a href="#" style="font-size:3rem; font-weight:500;">분양목록</a></h1>
	<div class="container2">
		<div class="row ">
			<c:forEach var="adopt" items="${adoptlist}">
			<div class="col-md-3">
				<a href="dog_detail?dno=${adopt.dno}" class="thumbnail adoptdogs"> 
				<img src="${adopt.img }" alt="">
				</a>
				<p class="pict">${adopt.title}//</p>
			</div>
			</c:forEach>
		</div>
	</div>
	<!-- /.section -->


<!-- 분양후기 -->
   <h1 style="text-align:center; padding:40px; "><a href="#" style="font-size:3rem; font-weight:500;">분양후기</a></h1>
	<div class="container2">
		<div class="row ">
			<c:forEach var="review" items="${reviewlist}" >
				<div class="col-md-3 hover-write" id="rev${revno.count}">
					<a href="reviewDetail?rvno=${review.rvno}" class="thumbnail2 "> 
					<img src="${review.img}" alt="">
					</a>
					<p class=" howrite visibleBox" onClick="location.href='reviewDetail?rvno=${review.rvno}'">${review.nname}님의 ${review.subject} 폴인독의 모든 서비스를 이용 후 남겨주신 고객님들의 소중한 리뷰를 소개합니다 </p>
				</div>
			</c:forEach>
		</div>	
	</div>
<!-- /.section -->

	<!-- ##### Instagram Feed Area Start ##### -->
    <div class="instagram-feed-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="insta-title">
                        <h5>Follow us @fallindog Instagram</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram Slides -->
        <div class="instagram-slides owl-carousel cotainer2">
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/1.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/2.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/3.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/4.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/5.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/6.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="resources/img/instagram-img/7.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Instagram Feed Area End ##### -->
<hr>
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area text-center" style="font-size:1rem;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Footer Nav Area -->
                    <div class="classy-nav-container breakpoint-off" >
                        <!-- Classy Menu -->
                        <nav class="classy-navbar ">
                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>
                            <!-- Menu -->
                            <div class="classy-menu">
                                <!-- close btn -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>
                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li><a href="noticeList">공지사항</a></li>
                                        <li><a href="contact">오시는길</a></li>
                                        <li><a href="dog_list_S">입양목록</a></li>
                                        <li><a href="adopt_board">입양신청</a></li>
                                        <li><a href="reviewList">입양후기</a></li>
                                        <li><a href="customerhome">자주묻는질문</a></li>
                                    </ul>
                                </div>
                                <!-- Nav End -->
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
		법인명 : (주) 폴인독 <br> 주소:경기도 성남시 분당구 돌마로 46 폴인독 보호소 <br>
		대표: 남궁진영 &amp; 박민욱 &amp; 박세라 <br> 사업자등록번호 : 2110-12-59281 <br> 통신판매업신고번호: 제 2020-경기도성남-8888호 동물판매업신고번호: 제 219000-928-2020-8888호 <br>
		E-mail : fallindogkorea@gmail.com <br>
		Copyright &copy;<script>document.write('fallindog.com');</script> all right reserved 
    </footer>
</body>
</html>