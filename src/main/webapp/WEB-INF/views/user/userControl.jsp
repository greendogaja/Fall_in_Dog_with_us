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
    <!-- Alert  -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <!-- Title -->
	
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/usearch.css">
	
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
		});//ready
		
		function reclear() {
				$('#idkey').val('');
				$('#namekey').val('');
				$('#phonekey').val('');
				return false;
		}//reclear
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
	
	<!--회원관리  -->
	<div class="container" style="min-width: 1000px;">
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
		</div><!-- 검색끝 -->
		
		<!--회원명단 출력  -->
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
								<th>회원삭제</th>
							</tr>
						</thead>
						
						<!-- 회원목록 -->
						<tbody id="find">
							<c:forEach var="user" items="${userlist}" varStatus="userno">
								<tr id="info?id=${user.id}">
									<td class="userDetail"><img src="${user.uploadfile}"></td>
									<td class="userDetail" style="dalseomedium"><a href="info?id=${user.id}">${user.id}</a></td>
									<td class="userDetail">${user.name}</td>
									<td class="userDetail">${user.yy}-${user.mm}-${user.dd}</td>
									<td class="userDetail">${user.nname}</td>
									<td class="userDetail">${user.gender}</td>
									<td class="userDetail" >
									<span class="tcenter2 userDetail" >${user.phone}
									</span>
									<script>
										 var num = "${user.phone}";
										 var data = num.replace(/^(\d{3})(\d{4})(\d{4})$/, `$1-$2-$3`);
										 $('#${user.id}').text(data);
									</script>
									</td>
									<td class="userDetail">${user.email}</td>
									<td class="deleteUser" id="id=${user.id}" ><span>Delete</span>
										
									</td>
								</tr>
								<script>
									$('.userDetail').click(function() {
										location.href=$(this).parent().attr("id");
									});
								</script>
							</c:forEach>
						</tbody>
					</table><!-- 회원명단끝 -->
					<!-- 회원탈퇴시키기 -->
					<script>
						$('.deleteUser').click(function (e) {
							e.preventDefault();
							var usde = this.id;
							Swal.fire({
							title: '회원삭제를 하시겠습니까?',
								showDenyButton: true,
								showCancelButton: true,
								confirmButtonText: '네',
								denyButtonText: `아니오`,
							}).then((result) => {
								if (result.isConfirmed) {
									Swal.fire({
										icon: 'success',
										title: '삭제 되었습니다.',
										showConfirmButton: false,
										timer: 3000
								});
									 setTimeout(() =>location.href="userdelete?"+usde , 1000); 
								
								} else if (result.isDenied) {
									Swal.fire('삭제하지 못하였습니다.', '', 'info');
								}
							});//comfirm
						});//deleteUserClick
					</script>
				
				<!--검색결과  -->		
				<div class="form-group searchresult" >
						<span  class="btnn btn-default" >
							검색결과 <span class="badge">${pageMaker.totalRowsCount}건</span>
						</span>
				</div>
			
				<!--검색바  -->	
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
	</div> <!-- 회원관리끝  -->
	
	<!-- 페이징 -->
	<div align="center" class="pagecs">
		<!-- First, Prev -->
		<c:choose>
			<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">
				<a href="usearchlist${pageMaker.searchQuery(1)}" >처음</a>&nbsp;
			</c:when>
			<c:when test="${pageMaker.cri.currPage != 1  }">
				<a href="usearchlist${pageMaker.searchQuery(pageMaker.cri.currPage-1)}" >&lt;</a>&nbsp;&nbsp; 
			</c:when>
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
				<a href="usearchlist${pageMaker.searchQuery(pageMaker.lastPageNo)}" >&nbsp;마지막</a>
			</c:when>
			<c:when test="${pageMaker.cri.currPage < pageMaker.lastPageNo}">
				<a href="usearchlist${pageMaker.searchQuery(pageMaker.cri.currPage+1)}"  >&nbsp;&gt;</a>
			</c:when>
		</c:choose>
	</div>
	<!-- 페이징끝  -->
	
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
                            	</div><!--classynav  -->
                                <!-- Nav End -->
                            </div><!--classy-menu  -->
                        </nav>
                    </div><!-- classy-nav-container breakpoint-off -->
                </div><!-- col-12 -->
            </div><!-- row  -->
        </div><!-- container -->
		법인명 : (주) 폴인독 <br> 주소:경기도 성남시 분당구 돌마로 46 폴인독 보호소 <br>
		대표: 남궁진영 &amp; 박민욱 &amp; 박세라 <br> 사업자등록번호 : 2110-12-59281 <br> 통신판매업신고번호: 제 2020-경기도성남-8888호 동물판매업신고번호: 제 219000-928-2020-8888호 <br>
		E-mail : fallindogkorea@gmail.com <br>
		Copyright &copy;<script>document.write('fallindog.com');</script> all right reserved 
    </footer>
</body>
</html>