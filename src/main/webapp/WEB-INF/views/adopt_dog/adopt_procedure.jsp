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
	
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/adopt_procedure.css">
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
												<!-- <li><a href="#" style="color:white;">내가쓴글</a></li>
												<li><a href="#" style="color:white;">내가단댓글</a></li> -->
												<li><a href="info" style="color:white;">회원정보</a></li>
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
                                  <!--   <li><a href="#">Catagory</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a>
                                                        <ul class="dropdown">
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li>
                                        </ul>
                                    </li> -->
                                             <li><a href="reviewList">입양후기</a></li>
                                    <li><a href="#">커뮤니티</a>
                                        <ul class="dropdown">
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
   
   
   
   
   
   <!-- content -->
<div class="content" id="content">
	<div class="content-title-wrap">
		<h3 class="content-title">입양 절차</h3>
	</div>
	<!-- cms-wrap -->
	<div class="cms-wrap ">
			<div class="section">
				<h4 class="h4">입양 전 체크리스트</h4>
				<ol class="adopt-pet-process-list check">
					<li>
						<div>
							<span>
								강아지의 수명은 약 15년 정도입니다. 살아가면서 질병도 걸릴 수 있고요.<br class="m-hidden">
								생활패턴이나 환경이 바뀌더라도 오랜 기간 동안 책임지고 잘 돌보아 줄 수 있나요?
							</span>
						</div>
					</li>
					
					<li>
						<div>
							<span>
								매일 산책을 시켜주거나 함께 있어줄 수 있는 시간이 충분한가요?<br class="m-hidden">
								강아지도 혼자 있으면 외로워하는 사회적 동물입니다.
							</span>
						</div>
					</li>
					
					<li>
						<div>
							<span>
								입양 이후 모니터링 관련 정보 제공에 협조를 해 주실 수 있나요?<br class="m-hidden">
								센터에서는 입양 인식개선을 위해서 보호자분의 적극적인 입양후기 공유를 권장 드립니다.<br class="m-hidden">
							</span>
						</div>
					</li>
				</ol>
			</div><!-- section -->
			
			<div class="section">
				<h4 class="h4">입양절차 안내</h4>
				<div class="adopt-pet-process">
					<ol class="adopt-pet-process-list">
						<li class="step01">
							<div>
								<h5>1. 입양 전 확인</h5>
								<p>
									Fall in dog 홈페이지내에서 '보호중인 동물'을 확인합니다.<br>
									입양대기동물의 사제한 정보를 알 수 있어요.<br>
								</p>
							</div>
							
							<a class="btn-go" href="dog_list_S"><span>동물 목록</span></a>
			
						</li>
						
						<li class="step02">
							<div>
								<h5>2. 입양 전 교육</h5>
								<p>
									입양을 희망하시는 분은 서울시 평생학습포털의 "반려동물 입양교육"을 이수해 주세요.<br>
									<a href="https://sll.seoul.go.kr/lms/requestCourse/doDetailInfo.do?course_id=ASP00001S995220220000001&class_no=01&course_gubun=1&ocw_yn=N">(교육 신청 안내 바로가기)</a>
								</p>
							</div>
						</li>
						
						<li class="step02">
							<div>
								<h5>3. 입양상담 예약</h5>
								<p>
									센터 방문 전 입양신청 글을 먼저 작성하여 예약을 해주세요.<br>
									<a href="">(입양신청 게시판 바로가기)</a>
								</p>
							</div>
						</li>
						
						<li class="step03">
							<div>
								<h5>4. 입양 진행</h5>
								<p>
									입양은 1~2회 입양상담 및 개체만남을 통해 진행됩니다.<br>
									(입양 후 파양은 불가합니다. 만남을 통해 신중하게 결정해 주세요)
								</p>
							</div>
						</li>
			
						<li class="step04">
							<div>
								<h5>5. 입양 후기 공유</h5>
								<p>
									보호자님과 입양된 반려견, 반려묘의 행복한 일상을 입양후기 게시판에 주기적으로 올려주세요.<br>
									입양 대기 중인 아이들의 입양과 인식 개선에 많은 도움이 됩니다.<br>
								</p>
							</div>
							
							<a class="btn-go" href=""><span>후기 게시판</span></a>
							
						</li>
					</ol>
			
					<div class="boxType02">
						<h5>유의사항 안내</h5>
						<div class="boxType03">
							<p>
								1. 한 마리에게 여러 명의 입양희망자가 생길 경우 센터 관리자들이 회의를 거쳐 선정하게 됩니다.<br>
								선택이 안 되더라도 양해해 주시기 바랍니다.
							</p>
							<p>
								2. 입양을 진행하면서 각 가정에서 필요한 필수 용품을 권해드립니다. 필요 물품들을 준비하여 편안한 가정환경을 만들어 주시기 바랍니다.
					  	 		(안전문, 방묘창, 리드줄, 하네스, 사료, 식기, 패드 등등)
							</p>
							<p>
								3. 입양 후 파양은 불가합니다. 가족구성원 모두가 신중하게 생각하시고 입양을 결정해주세요.
							</p>
						</div>
					</div>
				</div>
			</div><!-- section -->
			
		</div><!-- cms-wrap -->
	</div><!-- content -->
   



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
법인명 : (주) 폴인독 <br> 주소:경기도 성남시 분당구 돌마로 46 폴인독 보호소 <br>
대표: 남궁진영 &amp; 박민욱 &amp; 박세라 <br> 사업자등록번호 : 2110-12-59281 <br> 통신판매업신고번호: 제 2020-경기도성남-8888호 동물판매업신고번호: 제 219000-928-2020-8888호 <br>
E-mail : fallindogkorea@gmail.com <br>
Copyright &copy;<script>document.write('fallindog.com');</script> all right reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    </footer>

    

</body>
</html>