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
    <script src="resources/mLib/customer.js"></script>
        <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/customer.css">
    <link rel="stylesheet" href="resources/css/faq.css">
    <link rel="stylesheet" href="resources/css/qnadetail.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    
    
<script>
	$(function(){
		
		$('#writeBtn').click(function(){
			if(${loginID == null}){
				alert('로그인 후 이용바랍니다.');
			}else{
				location.href="qnainsertf"
			}
		});//writebtn
		
		$('#goreply').click(function(){
			$('#show').toggleClass( 'show' );		
		});//goreply

		$('#goureply').click(function(){
			$('#showup').toggleClass( 'showup' );		
		});//goreply
		
		
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

	<div class="abox">
		<div id="box" class="dbox1">
			<div><!--사이드정보창  -->
				<div>
					<h2 class="big_title sideBox1">고객센터</h2>
					<div class="sideBox sideBox2">
					<ul class="left-bar">
							<!-- 이용안내  -->
							<li id="guidemenu">
								<span >이용안내 </span>
								<span class="doarrow"></span>
							</li>
							<li>
								<ul id="hidebox" class="hidex " aria-hidden="false" >
									<li class="hoverli cho" onClick="location.href='procedure'">
										<span >입양절차</span>
									</li>
									<li  class="hoverli cho" onClick="location.href='roadmove'">
										<span >위치안내</span>
									</li>
								</ul>
							</li>
							<!-- 자주묻는질문 -->
							<li class="hoverli cho" onClick="location.href='customerhome'">
								<span  >자주묻는질문(FAQ)</span>
							</li>
							<!-- 1:1문의 -->
							<li class="hoverli cho"  onClick="location.href='qna'">
								<span>1:1문의하기(Q&amp;A)</span>
							</li >
						</ul>
					</div><!-- sidebox2 -->
				</div>
			</div>
		</div> <!-- dbox1 -->
		<!-- 문의디테일  -->
		<div id="resultarea" class="aabox">
			<div id="area">
				<div class="title">
					<h2 class="detail">Q&amp;A</h2>
				</div>
				
				<!-- 목록 -->
				<table class="tablecon">
					<tbody class="conten">
						<tr>
							<td class="toptd">
								<input type="hidden" name="fno" value="${qnaone.qno}"/>
								<img src="${qnaone.profile}" class="profile-img">
								<p> ${qnaone.nickname}님의 문의글:${qnaone.title}</p>
								<span style="margin-left: 45%;">${qnaone.regdate}
								<c:if test="${qnaone.situation == 1}">
								           <span  class="situation">답변대기</span>
								 </c:if>
								 <c:if test="${qnaone.situation != 1}">
											<span class="situation">답변완료</span>
								 </c:if>
								</span>
							</td>
						</tr>
						<tr>
							<td>
								<div>
									${qnaone.content}
								</div>
							</td>
						</tr>
						<c:if test="${!empty qnaone.uploadfile  }">
						<tr>
							<td>
								<span class="material-symbols-outlined">
								folder_open </span>첨부파일: <a href="download?dnfile=${qnaone.uploadfile}">${qnaone.uploadfile}</a>
							</td>
						</tr>
						</c:if>
					</tbody>
				</table>
			
				<!-- 어드민전용  -->
				<div class="foradmin">
					<c:if test="${qnaone.name eq loginName || loginID eq 'admin'}">
					<a href="qnadelete?qno=${qnaone.qno}" class="detailbt" style="color: white;">글삭제</a> 
					<a href="qnadetail?want=U&qno=${qnaone.qno}" class="detailbt" style="color: white;">글수정</a> 
					</c:if>
					<a href="qna" class="detailbt"	style="color: white;">목록으로</a>
				<c:if test="${loginID eq 'admin' }">
					<c:if test="${!empty replylist.content }">
					<span id="goureply">댓글수정</span>
					</c:if>
					<c:if test="${empty replylist.content }">
					<span id="goreply">댓글작성</span>
					</c:if>
				</c:if>
				</div>
				
				<!--댓글작성  -->
				<div class="show replyline" id="show">
					<form method="post" action="writereply"  enctype="multipart/form-data">
						<input type="hidden" name="qno" value="${qnaone.qno}"/>
						<input type="hidden" name="profile" value="${loginImg}"/>
						<table class="tableqna">
							<tr>
								<th>내용</th>
								<td>
									<textarea id="summernote" name="content" class="qnacontent" title="내용"> </textarea>	
								</td>
							</tr>
							<tr>
								<th>파일첨부</th>
								<td>
									<input type="file" name="uploadfilef" id="uploadfilef" style="line-height: 22px;" >
								</td>
							</tr>
						</table>
						<button type="reset"  class="writebtn ">취소</button>
						<button onClick="location.href='writereply'"   class="writebtn" style="margin-right:8px;">글등록</button>
					</form>
				</div>
				
				<!--댓글 업데이트  -->
				<div class="showup replyline" id="showup">
					<form method="post" action="updatereply"  enctype="multipart/form-data">
						<input type="hidden" name="qno" value="${qnaone.qno}"/>
						<table class="tableqna">
							<tr>
								<th>내용</th>
								<td>
									<textarea id="summernote" name="content" class="qnacontent" title="내용">${replylist.content} </textarea>	
								</td>
							</tr>
							<tr>
								<th>파일첨부</th>
								<td>
									<input type="hidden" name="uploadfile" value="${user.uploadfile}"><br>
									<input type="file" name="uploadfilef" id="uploadfilef" value="${replylist.uploadfile}" style="line-height: 22px;" >
								</td>
							</tr>
						</table>
						<button type="reset"  class="writebtn ">취소</button>
						<button onClick="location.href='updatereply'"  class="writebtn" style="margin-right:8px;">글수정</button>
					</form>
				</div>
				
				<!-- 댓글 -->
				<c:if test="${!empty replylist.content }">
					<div id="reply">
							<div class="replyline">
								<div>
									<p style="line-height: 70px; margin: 0;"><img src="${replylist.profile}" class="profile-img">
							        답변자 : admin
							    </div>
						        <div >
						        	${replylist.content}
						        </div>
						        <div >
		    				    <c:if test="${!empty replylist.uploadfile  }">
									<div><span class="material-symbols-outlined">
									folder_open </span>첨부파일: <a href="download?dnfile=${replylist.uploadfile}">${replylist.uploadfile}</a></div>
							    </c:if>
					        	</div>
							</div>
					</div>
				</c:if>
			</div><!-- area -->
		</div><!--aabox  -->
	</div> <!-- abox -->

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