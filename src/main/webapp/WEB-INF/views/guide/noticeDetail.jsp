<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<!-- ##### Footer Area End ##### -->

<meta charset="UTF-8">
<title>Notice</title>
<!-- Style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/guide.css">

<!-- ajax 댓글리스트 js 
	<script src="resources/myLib/ax_ncomment.js"></script> -->

<!-- jQuery (Necessary for All JavaScript Plugins) -->

<script src="https://code.jquery.com/jquery-2.2.4.min.js"
	integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
	crossorigin="anonymous"></script>

<!-- <script defer="defer" src="resources/js/jquery/jquery-3.2.1.min.js" ></script> -->
<!-- Popper js -->
<script defer="defer" src="resources/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script defer="defer" src="resources/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script defer="defer" src="resources/js/plugins.js"></script>
<!-- Active js -->
<script defer="defer" src="resources/js/active.js"></script>
<!-- Title -->
<title>Fall IN Dog - 폴인독</title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/ficon.ico">
<!-- Style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/guide.css">

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
		<div class="modal fade" id="subsModal" tabindex="-1" role="dialog"
			aria-labelledby="subsModal" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="modal-body">
						<h5 class="title">Subscribe to my newsletter</h5>
						<form action="#" class="newsletterForm" method="post">
							<input type="email" name="email" id="subscribesForm2"
								placeholder="Your e-mail here">
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
									<li><a href="#">Fall In Dog </a></li>
									<li><a href="#">공지사항</a></li>
									<li><a href="#">입양안내 및 절차</a></li>
									<li><a href="#">분양중 동물 </a></li>
									<li><a href="#">1:1문의</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Top Social Area -->
					<div class="col-12 col-sm-4">
						<div class="top-social-area dologin">
							<c:if test="${empty loginID}">
								<a href="loginf" data-toggle="tooltip" data-placement="bottom"
									title="로그인"><i class="fa fa-linkedin"
									style="font-size: 30px" aria-hidden="true"></i></a>
								<a href="joinf" data-toggle="tooltip" data-placement="bottom"
									title="회원가입"><i class="fa fa-user-plus"
									style="font-size: 30px" aria-hidden="true"></i></a>
							</c:if>
							<c:if test="${!empty loginID}">
                            ${loginNick}님 환영합니다
                            <a href="logout" data-toggle="tooltip"
									data-placement="bottom" title="로그아웃"><i
									class="fa fa-sign-out" style="font-size: 30px"
									aria-hidden="true"></i></a>
								<div class="classynav">
									<ul>
										<li class="mhover"><i class="fa fa-cog "
											style="font-size: 30px" aria-hidden="true"></i>
											<ul class="dropdown mhover-content boradi ">
												<li style="font-size: 1rem;">MyPage</li>
												<li><a href="#" style="color: white;">내가쓴글</a></li>
												<li><a href="#" style="color: white;">내가단댓글</a></li>
												<li><a href="info" style="color: white;">회원정보</a></li>
											</ul></li>
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
						<a href="home" class="original-logo"><img
							src="resources/img/core-img/flogo.png" alt=""></a>
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
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
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

	<!-- Notice Detail Start 
	================================== 본문 ==================================-->
	<hr>

	<div class="ArticleContentBox">
		<div class="article_header">
			<div class="ArticleTitle">
				<a href="noticeList">Notice</a>
				<div class="title_area">
					<h3>${apple.subject}&nbsp;&nbsp;${apple.title}</h3>
				</div>
			</div>
			<div class="WriterInfo">
				<div class="profile_image">
					<!-- 프로필이미지 : user 테이블에서 uploadfile 가져와야함 -->
					<img src="${apple.uploadfile}" width=40 height=50>

				</div>
				<div class="write_info_box">
					<c:if test="${loginID=='admin'}">
						<div class="update_delete">
							<a href="ndetail?jCode=U&nno=${apple.nno}" class="write_btn">글수정</a>
							<a href="ndelete?nno=${apple.nno}" class="delete_btn">글삭제</a>
						</div>
					</c:if>

					<div class="p_f_info">
						<div class="profile_info">${apple.nname}</div>
						<div class="article_info">

							<span>${apple.regdate}&nbsp;&nbsp;</span> <span>조회&nbsp;${apple.cnt}</span>
						</div>
					</div>
				</div>




			</div>
			<div class="ArticleTool"></div>
		</div>
		<hr>
		<div class="article_container">
			<div class="article_viewer">
				<div class="w-s_p-w">${apple.content}</div>
				<c:if test="${not empty apple.img}">
					<img src="${apple.img}">
				</c:if>
			</div>
			<div class="article_writer">
				<a href="nwriterList?id=${apple.id}&uploadfile=${apple.uploadfile}">
					<%-- <span>${apple.image}</span> --%> <span>${apple.nname}님의
						게시글 더보기</span>
				</a>
			</div>
		</div>
	</div>
		<hr>

	<!-- Notice Detail End -->


	<c:if test="${not empty message}">
		${message}<br>
	</c:if>
	<div class="list_forward">
		<a href="noticeList" class="list_a">목록으로</a> <a
			href="javascript:history.go(-1)" class="forward_a">이전으로</a>
	</div>

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area text-center" style="font-size: 1rem;">
		<div class="container">
			<div class="row">
				<div class="col-12">

					<!-- Footer Nav Area -->
					<div class="classy-nav-container breakpoint-off">
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
									<div class="cross-wrap">
										<span class="top"></span><span class="bottom"></span>
									</div>
								</div>

								<!-- Nav Start -->
								<div class="classynav">
									<ul>
										<li><a href="#">Home</a></li>
										<li><a href="#">About Us</a></li>
										<li><a href="#">Lifestyle</a></li>
										<li><a href="#">travel</a></li>
										<li><a href="#">Music</a></li>
										<li><a href="#">Contact</a></li>
									</ul>
								</div>
								<!-- Nav End -->
							</div>
						</nav>
					</div>



				</div>
			</div>
		</div>

		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		법인명 : (주) 폴인독 <br> 주소:경기도 성남시 분당구 돌마로 46 폴인독 보호소 <br> 대표:
		남궁진영 &amp; 박민욱 &amp; 박세라 <br> 사업자등록번호 : 2110-12-59281 <br>
		통신판매업신고번호: 제 2020-경기도성남-8888호 동물판매업신고번호: 제 219000-928-2020-8888호 <br>
		E-mail : fallindogkorea@gmail.com <br> Copyright &copy;
		<script>
			document.write('fallindog.com');
		</script>
		all right reserved
		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	</footer>

</body>
</html>