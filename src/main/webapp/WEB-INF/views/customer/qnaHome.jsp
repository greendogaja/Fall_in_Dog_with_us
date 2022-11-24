<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <!-- Popper js -->
    <script defer="defer" src="resources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script defer="defer" src="resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script defer="defer" src="resources/js/plugins.js"></script>
    <!-- Active js -->
    <script defer="defer" src="resources/js/active.js"></script>
    
    <script type="text/javascript" 
		    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de9414c60aa7e6482bee260109a3caa9&libraries=services">
	</script>
        <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/customer.css">
    <link rel="stylesheet" href="resources/css/faq.css">
    <link rel="stylesheet" href="resources/css/qnainsert.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    
<script>
	$(function(){
		
		$('#writeBtn').click(function(){
			if(${loginID == null}){
				alert('로그인 후 이용바랍니다.');
			}else{
				location.href="qnainsertf"
			}
		});//writebtn
		$('.cantdetail').click(function(){
				alert('본인만 확인 가능합니다.');
		});//cantdetail
	 	
		$('#searchBtn').click(function(){
	 		self.location="qna"
	 		+"?currPage=1&rowsPerPage=10"
	 		+"&searchType="
	 		+$('#searchType').val()
	 		+"&keyword="
	 		+$('#keyword').val();
	 	});//searchbtn
	 	
	 
		
	});//ready  
	
	
	
	
</script>
    
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
												<c:if test="${'admin' == loginID }">
													<li><a href="usearchlist" style="color: white;">회원관리</a></li>

												</c:if>
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
									<li><a href="#">Guide</a>
										<ul class="dropdown">
											<li><a href="aboutUs">About Us</a></li>
											<li><a href="contact">Contact</a></li>
											<li><a href="noticeList">Notice</a></li>
										</ul></li>
									<li><a href="#">Adopt</a>
										<ul class="dropdown">
											<li><a href="adopt_guide">입양 위탁 소개</a></li>
											<li><a href="adopt_procedure">입양 위탁 절차</a></li>
											<li><a href="dog_list_S">보호/입양중 목록</a></li>
											<li><a href="adopt_board">입양 신청</a></li>
										</ul></li>
									<li><a href="#">Catagory</a>
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
														</ul></li>
													<li><a href="#">Catagory 2</a></li>
													<li><a href="#">Catagory 2</a></li>
												</ul></li>
											<li><a href="#">Catagory 1</a></li>
											<li><a href="#">Catagory 1</a></li>
										</ul></li>
									<li><a href="home.jsp">About Us</a></li>
									<li><a href="#">Community</a>
										<ul class="dropdown">
											<li><a href="review">입양후기</a></li>
											<li><a href="free">자유게시판</a></li>
											<li><a href="share">나눔장터</a></li>
										</ul></li>
									<li><a href="home.jsp">Contact</a></li>
								</ul>

								<!-- Search Form  -->
								<div id="search-wrapper">
									<form action="#">
										<input type="text" id="search"
											placeholder="Search something...">
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
	
	
	<div class="abox">
	
	<div id="box" class="dbox1">
		<div >
			<div  >
				<h2  class="big_title">고객센터</h2>
				<div >
					<ul class="left-bar">
						<li id="guidemenu">
							<span >이용안내 </span>
							<span class="doarrow"></span>
						</li>
						<li>
							<ul id="hidebox" class="hidex " aria-hidden="false" >
								<li class="hoverli cho">
									<span >공지사항</span>
								</li>
								<li class="hoverli cho" onClick="location.href='procedure'">
									<span >입양절차</span>
								</li>
							</ul>
						</li>
						<li class="hoverli cho" onClick="location.href='customerhome'">
							<span  >자주묻는질문(FAQ)</span>
						</li>
						<li class="hoverli cho"  onClick="location.href='qna'">
							<span>1:1문의하기(Q&amp;A)</span>
						</li >
						<li  class="hoverli cho" onClick="location.href='roadmove'">
							<span >위치안내</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<div id="resultarea" class="aabox">
		<div id="area">
		<div class="title">
			<h2 class="detail">문의게시판(Q&amp;A)</h2>
			<h1 class="detail">강아지, 입양상담 무엇이든 물어보세요.</h1>
		</div>
		
		<div id="searchbar">
			<div class="form-group" style="margin-bottom:0;">
				<select class="form-control" name="searchType" id="searchType">
					<option value="st"
						${pageMaker.cri.searchType=='st' ? 'selected' : ''}>제목</option>
					<option value="sc"
						${pageMaker.cri.searchType=='sc' ? 'selected' : ''}>이름</option>
				</select>
			</div>
			<div>
				<input type="text" class="form-control" id="keyword" name="keyword"
					value="${pageMaker.cri.keyword}">
			</div>
			<button id="searchBtn" class="btn btn-default">Search</button>
		</div>
		<div class="form-group searchresult" style="margin:0; border-bottom: 3px solid black; width: 99%; margin-left: 4%;">
				<span class="btn btn-default"> 총<span class="badge">(${pageMaker.totalRowsCount})개[전체:${pageMaker.cri.currPage}/${pageMaker.epageNo}]페이지</span>
				</span>
		</div>
		
		


		<table class="tablecon">
			<thead>
				<tr style="text-align:center; ">
					<th>제목</th>
					<th>이름</th>
					<th>작성일</th>
					<th>상태</th>
				</tr>
			</thead>
			<tbody class="conten">
					<c:forEach var="qna" items="${qnalist}">
						<tr >
							 <c:if test="${qna.secret == 1}">
							     <c:choose>
							        <c:when test="${qna.name eq loginName || loginID eq 'admin'}"> <!-- 작성자이거나 관리자일 때 -->
							            <td class="qtitle" onClick="location.href='qnadetail?qno=${qna.qno}'" style="width:60%; text-align:left;">
										<span class="material-symbols-outlined">
										lock_open </span>
							            <c:out value="${qna.title}"/></td>
							        </c:when>
							        <c:otherwise>
							            <td class="cantdetail qtitle" style="width:60%; text-align:left;">
										<span class="material-symbols-outlined">
										lock </span><c:out value="${qna.title}"/></td>
							        </c:otherwise>
							     </c:choose>                                            
							 </c:if>
							 <c:if test="${qna.secret !=1 }">
								 	<td class= "qtitle" onClick="location.href='qnadetail?qno=${qna.qno}'" style="width:60%; text-align:left;">
										<span class="material-symbols-outlined">
										lock_open </span><c:out value="${qna.title}"/></td>
							 </c:if> 
							
							
							
							<td>${qna.name }</td>
							<td>${qna.regdate}</td>
							
							 <c:if test="${qna.situation == 1}">
							            <td >
							            	<span class="situation">답변대기</span></td>
							 </c:if>
							 <c:if test="${qna.situation != 1}">
							            <td  >
										<span class="situation">답변완료</span></td>
							 </c:if>
							
							
							
						</tr>
					</c:forEach>
			</tbody>
		</table>
		<div class="foradmin">
			<a id="writeBtn" style="color: white;" >글쓰기</a>
		</div>
		

		<div align="center" class="pagecs">
			<!-- First, Prev -->
			<c:choose>
				<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">
					<a href="customerhome${pageMaker.searchQuery(1)}" >처음</a>&nbsp;
			<a href="customerhome${pageMaker.searchQuery(pageMaker.spageNo-1)}" >&lt;</a>&nbsp;&nbsp; 
			
		</c:when>
				<c:otherwise>
					<font color="Gray">처음&nbsp;&lt;&nbsp;&nbsp;</font>
				</c:otherwise>
			</c:choose>
			<!-- Displag PageNo -->
			<c:forEach var="i" begin="${pageMaker.spageNo}"
				end="${pageMaker.epageNo}">
				<c:if test="${i==pageMaker.cri.currPage}">
					<font size="6" color="Orange">${i}</font>&nbsp;
		</c:if>
				<c:if test="${i!=pageMaker.cri.currPage}">
					<a href="customerhome${pageMaker.searchQuery(i)}" >${i}</a>&nbsp;
		</c:if>
			</c:forEach>
			<!-- Next, Last -->
			<c:choose>
				<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
					<a href="customerhome${pageMaker.searchQuery(pageMaker.epageNo+1)}"  >&nbsp;&gt;</a>
					<a href="customerhome${pageMaker.searchQuery(pageMaker.lastPageNo)}" >&nbsp;마지막</a>
				</c:when>
				<c:otherwise>
					<font color="Gray">&nbsp;&gt;&nbsp;마지막</font>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	</div><!--area  -->
	
	</div>
	
	<!--######################### Footer -->
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