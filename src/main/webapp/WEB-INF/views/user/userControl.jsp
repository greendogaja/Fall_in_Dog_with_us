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
	
	<script>
	$(function(){
		$('#searchType').change(function(){
			if($(this).val()=='n') $('#keyword').val('');
		});
		
		$('#searchBtn').click(function(){
			self.location="usearchlist"
			+"${pageMaker.makeQuery(1)}"
			+"&searchType="
			+$('#searchType').val()
			+"&keyword="
			+$('#keyword').val()
		});
	});
	
	 function reclear() {
			$('#idkey').val('');
			$('#namekey').val('');
			$('#phonekey').val('');
			return false;
	} 
	</script>
	
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/usearch.css">
	
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
													<li><a href="#" style="color: white;">회원관리</a></li>

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
	
	
	<div class="container">
		<h2 class="headertext">
			회원 관리
		</h2>
	
	
		<!--조건이 있을때  -->
		<!--입력값이 있을때 유지  -->
		<div class="panel panel-default box1">
			<div class="panel-heading"><h3 style="display: inline-block;">회원정보 검색</h3>
			<small>(한 항목씩 검색)</small> 
			</div>
			<div class="panel-body">
				<form action="usearchlist" method="get">
					<!--아이디검색  -->
						<div class="form-group fominput">
							<c:if test="${!empty pageMaker.cri.idkey}">
								<label for="idkey">아이디 :</label> <input type="text" 
								class="form-controls" id="idkey" name="idkey" value="${pageMaker.cri.idkey}" class="clear">
							</c:if>
							<c:if test="${empty pageMaker.cri.idkey}">
								<label for="idkey">아이디:</label> <input type="text"
								class="form-controls" id="idkey" name="idkey" >
							</c:if>
						</div>
				
					<!--이름 or 별명 검색  -->
						<div class="form-group fominput">
							<c:if test="${!empty pageMaker.cri.namekey}">
								<label for="name">이름 or 별명:</label> <input type="text"
								class="form-controls" id="namekey" name="namekey" value="${pageMaker.cri.namekey}" class="clear">
							</c:if>
							<c:if test="${empty pageMaker.cri.namekey}">
								<label for="namekey">이름 or 별명:</label> <input type="text"
								class="form-controls" id="namekey" name="namekey" >
							</c:if>
						</div>
					

					<!--연락처검색  -->
						<div class="form-group fominput">
							<c:if test="${!empty pageMaker.cri.phonekey}">
									<label for="phonekey">연락처:</label> <input type="text" 
									class="form-controls" id="phonekey" name="phonekey" value="${pageMaker.cri.phonekey}" class="clear">
							</c:if>
							<c:if test="${empty pageMaker.cri.phonekey}">
								<label for="phonekey">연락처:</label> <input type="text"
								class="form-controls" id="phonekey" name="phonekey" >
							</c:if>
						</div>
					<div class="sebtn" >
					<button type="submit" class="btn btn-default">검색</button>
					<button type="reset"  class="btn btn-default" onclick="return reclear()">초기화</button>
					</div>
				</form>
			</div>
		</div>

		<div class="panel panel-default box2">
			<div class="panel-heading"><h3>회원명단 출력</h3></div>
			<div class="panel-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>프로필</th>
							<th>아이디</th>
							<th>이름</th>
							<th>생년월일</th>
							<th>별명</th>
							<th>성별</th>
							<th>연락처</th>
							<th>이메일</th>
						</tr>
					</thead>
					<tbody id="find">

					
						<c:forEach var="user" items="${userlist}">
							<tr onClick="location.href='info?id=${user.id}'">
								<td><img src="${user.uploadfile}"></td>
								<td style="dalseomedium"><a href="info?id=${user.id}">${user.id}</a></td>
								<td>${user.name}</td>
								<td>${user.yy}-${user.mm}-${user.dd}</td>
								<td>${user.nname}</td>
								<td>${user.gender}</td>
								<td >
								<span class="tcenter2" id="${user.id}">${user.phone}
								</span>
								<script>
									 var num = "${user.phone}";
									 var data = num.replace(/^(\d{3})(\d{4})(\d{4})$/, `$1-$2-$3`);
									 $('#${user.id}').text(data);
								</script>
								</td>
								<td>${user.email}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
							
				<div class="form-group searchresult" >
						<span  class="btnn btn-default" >
							검색결과 <span class="badge">${pageMaker.totalRowsCount}건</span>
						</span>
				</div>
				<div id="searchbar">
					
					<div class="form-group">
						<select class="form-control" name="searchType" id="searchType">
							<option value="n" ${pageMaker.cri.searchType=='null' ? 'selected' : ''}>전체</option>
							<option value="sid" ${pageMaker.cri.searchType=='sid' ? 'selected' : ''}>ID</option>
							<option value="sname" ${pageMaker.cri.searchType=='sname' ? 'selected' : ''}>성명</option>
							<option value="semail" ${pageMaker.cri.searchType=='semail' ? 'selected' : ''}>이메일</option>
						</select>
					</div>
					
					<div>
						<input type="text" class="form-control" id="keyword" name="keyword" value="${pageMaker.cri.keyword}">
					</div>
					
					<button id="searchBtn" class="btn btn-default">Search</button>
					
				</div>
					
					
			</div>
		</div>
	</div>
	<div align="center" class="pagecs">
	<!-- First, Prev -->
	<c:choose>
		<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">
			<a href="usearchlist${pageMaker.searchQuery(1)}">처음</a>&nbsp;
			<a href="usearchlist${pageMaker.searchQuery(pageMaker.spageNo-1)}">&lt;</a>&nbsp;&nbsp; 
			
		</c:when>
		<c:otherwise>
			<font color="Gray">처음&nbsp;&lt;&nbsp;&nbsp;</font>   
		</c:otherwise>
	</c:choose>	
	<!-- Displag PageNo -->
	<c:forEach  var="i" begin="${pageMaker.spageNo}" end="${pageMaker.epageNo}">
		<c:if test="${i==pageMaker.cri.currPage}">
			<font size="6" color="Orange">${i}</font>&nbsp;
		</c:if>
		<c:if test="${i!=pageMaker.cri.currPage}">
			<a href="usearchlist${pageMaker.searchQuery(i)}">${i}</a>&nbsp;
		</c:if>
	</c:forEach>
	<!-- Next, Last -->
	<c:choose>
		<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
			<a href="usearchlist${pageMaker.searchQuery(pageMaker.epageNo+1)}">&nbsp;&gt;</a>  
			<a href="usearchlist${pageMaker.searchQuery(pageMaker.lastPageNo)}">&nbsp;마지막</a> 
		</c:when>
		<c:otherwise>
			<font color="Gray">&nbsp;&gt;&nbsp;마지막</font>   
		</c:otherwise>
	</c:choose>
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