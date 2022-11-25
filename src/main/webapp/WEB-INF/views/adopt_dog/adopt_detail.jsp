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
	<!-- reply.js -->
    <script defer="defer" src="resources/mLib/adopt_reply.js"></script>

    
	
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <!-- Style CSS -->
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
												<li><a href="#" style="color:white;">내가쓴글</a></li>
												<li><a href="#" style="color:white;">내가단댓글</a></li>
												<li><a href="info" style="color:white;">회원정보</a></li>
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
                        <a href="home" class="original-logo"><img src="resources/img/core-img/flogo.png" alt=""></a>
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
                                    <li><a href="#">Guide</a>
                                        <ul class="dropdown">
                                            <li><a href="aboutUs">About Us</a></li>
                                            <li><a href="contact">Contact</a></li>
                                            <li><a href="noticeList">Notice</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Adopt</a>
                                        <ul class="dropdown">
                                        	<li><a href="adopt_guide">입양 위탁 소개</a></li>
                                            <li><a href="adopt_procedure">입양 위탁 절차</a></li>
                                            <li><a href="dog_list_S">보호/입양중 목록</a></li>
                                            <li><a href="adopt_board">입양 신청</a></li>
                                        </ul>
                                    </li>
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
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="home.jsp">About Us</a></li>
                                    <li><a href="#">Community</a>
                                        <ul class="dropdown">
                                            <li><a href="review">입양후기</a></li>
                                            <li><a href="free">자유게시판</a></li>
                                            <li><a href="share">나눔장터</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="home.jsp">Contact</a></li>
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
    <hr>

    <div class="ArticleContentBox">
        <div class="article_header">
            <div class="ArticleTitle">
                <a href="adopt_board">입양 신청</a>

                <div class="title_area">
                    <h3>${Adopt_detail.title}</h3>
                </div>
            </div>

            <div class="WriterInfo">
                <div class="profile_info">${Adopt_detail.id}</div>

                <div class="article_info">
                    <span>${Adopt_detail.regdate}</span>
                    <c:if test="${loginID==Adopt_detail.id || loginID=='admin'}">
                        <div class="update_delete">
                            <span><a href="adopt_detail?jCode=U&ano=${Adopt_detail.ano}">글수정</a></span>&nbsp;&nbsp;
                            <span><a href="adopt_delete?ano=${Adopt_detail.ano}">글삭제</a></span>
                        </div>
                    </c:if>
                </div>

            </div>

            <div class="ArticleTool"></div>
        </div>

        <hr>

        <div class="article_container">
            <div class="article_viewer">
                <div class="w-s_p-w">${Adopt_detail.content}</div>
            </div>
        </div>

        <hr>

        <!-- =========================== comment/댓글 ================================== -->
        <div class="CommentBox">
            <div class="comment_title">댓글</div>
            <!-- 댓글 리스트 AJAX-->
            <ul class="comment_list">
                <!-- 댓글 리스트  -->
                <c:if test="${not empty Adopt_Reply}">
                    <c:forEach var="reply_list" items="${Adopt_Reply}">
                        <li class="comment_item">

                            <!-- ==========================댓글 list==========================-->

                                <div class="n_comment_area pd_15">

                                    <div class="comment_box">
                                        <!-- 작성자 닉네임 -->
                                        <div class="comment_nick">${reply_list.id}</div>
                                        <!-- 더보기 수정/삭제 -->
                                        <c:if test="${loginID == reply_list.id}">
                                            <div class="comment_tool">
                                                <a class="comment_tool_a"><img
                                                        src="resources/img/notice/re_more_button.png"></a>
                                                <div class="up_del dp_h">
                                                    <a class="re_update">수정</a>&nbsp;&nbsp;
                                                    <a
                                                        href="deleteReply?rno=${reply_list.rno}&ano=${reply_list.ano}&grp=${reply_list.grp}&grps=${reply_list.grps}">삭제</a>
                                                </div>
                                            </div>
                                        </c:if>

                                        <div class="comment_text_box">
                                            <div class="comment_text_view w-s_p-w">${reply_list.content}</div>


                                        </div>
                                        <div class="comment_info_box">
                                            <span class="comment_info_reg">${reply_list.regdate}</span>
                                            <a class="reply_display">답글쓰기</a>
                                        </div>
                                        <!-- ==========================대댓글 입력==========================-->
                                        <div class="comment_inbox re_box dp_h">
                                            <!-- grp 는 현재 noticeController -> ndetail 메서드 ->
                                            orange 의 vo 로 담겨져 있음 -->
                                            <form action="saveReplyReply">
                                                <!-- nno는 현재 noticeController -> ndetail 메서드 ->
                                                        apple 의 vo 로 담겨있으므로, apple.nno 로 호출해야함 -->
                                                <input type="hidden" name="ano" value="${reply_list.ano}" id="ano">
                                                <input type="hidden" name="id" value="${loginID}">
                                                <div class="mg_b_10">${loginID}</div>
                                                <textarea name="content" id="content" placeholder="댓글을 남겨보세요."
                                                    class="comment_textarea"></textarea>
                                                <div class="comment_attach">
                                                    <input type="submit" name="commentData" id="commentData" value="등록">
                                                    <input type="reset" value="취소">
                                                    <input type="hidden" name="grp" value="${reply_list.grp}">
                                                    <input type="hidden" name="grps" value="${reply_list.grps}">
                                                    <input type="hidden" name="grpl" value="${reply_list.grpl}">
                                                </div>
                                            </form>
                                        </div>
                                        <!-- ==========================댓글 수정창==========================-->
                                        <div class="comment_inbox re_box_update dp_h">
                                            <!-- grp 는 현재 noticeController -> ndetail 메서드 ->
                                            orange 의 vo 로 담겨져 있음 -->
                                            <form action="updateReply">
                                                <div class="mg_b_10">${reply_list.id}</div>
                                                <textarea name="content" id="content"
                                                    class="comment_textarea">${reply_list.content}</textarea>
                                                <div class="comment_attach">
                                                    <input type="submit" value="수정">
                                                    <input type="reset" value="취소">
                                                    <input type="hidden" name="ano" value="${reply_list.ano}">
                                                    <input type="hidden" name="rno" value="${reply_list.rno}">
                                                    <input type="hidden" name="id" value="${reply_list.id}">
                                                    <input type="hidden" name="grp" value="${reply_list.grp}">
                                                    <input type="hidden" name="grps" value="${reply_list.grps}">
                                                    <input type="hidden" name="grpl" value="${reply_list.grpl}">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            <!-- ========================== 대댓글 list ==========================-->
                            <c:if test="${reply_list.grpl != 0}">

                                <div class="n_comment_area  pd_55">
                                    <div class="comment_box">
                                        <!-- 작성자 닉네임 -->
                                        <div class="comment_nick">${reply_list.id}</div>
                                        <!-- 더보기 수정/삭제 -->
                                        <c:if test="${loginID == reply_list.id}">
                                            <div class="comment_tool">
                                                <a class="comment_tool_a"><img
                                                        src="resources/img/notice/re_more_button.png"></a>
                                                <div class="up_del dp_h">
                                                    <a class="re_update">수정</a>&nbsp;&nbsp;
                                                    <a
                                                        href="deleteReply?rno=${reply_list.rno}&ano=${reply_list.ano}&grp=${reply_list.grp}&grps=${reply_list.grps}">삭제</a>
                                                </div>
                                            </div>
                                        </c:if>
                                        <div class="comment_text_box">
                                            <div class="comment_text_view w-s_p-w">${reply_list.content}</div>
                                        </div>
                                        <div class="comment_info_box">
                                            <span class="comment_info_reg">${reply_list.regdate}</span> <a
                                                class="rereply_display">답글쓰기</a>
                                        </div>

                                        <!-- ==========================대댓글의 대댓글 입력==========================-->
                                        <div class="comment_inbox rere_box dp_h">
                                            <!-- grp 는 현재 noticeController -> ndetail 메서드 ->
                                            orange 의 vo 로 담겨져 있음 -->
                                            <form action="saveReplyReply">
                                                <!-- nno는 현재 noticeController -> ndetail 메서드 ->
                                                        apple 의 vo 로 담겨있으므로, apple.nno 로 호출해야함 -->
                                                <input type="hidden" name="ano" value="${reply_list.ano}" id="ano">
                                                <input type="hidden" name="id" value="${loginID}">
                                                <div class="mg_b_10">${loginID}</div>
                                                <textarea name="content" id="content" placeholder="댓글을 남겨보세요."
                                                    class="comment_textarea"></textarea>
                                                <div class="comment_attach">
                                                    <input type="submit" name="commentData" id="commentData" value="등록">
                                                    <input type="reset" value="취소">
                                                    <input type="hidden" name="grp" value="${reply_list.grp}">
                                                    <input type="hidden" name="grps" value="${reply_list.grps}">
                                                    <input type="hidden" name="grpl" value="${reply_list.grpl}">
                                                </div>
                                            </form>
                                        </div>
                                        <!-- ==========================대댓글 수정창==========================-->
                                        <div class="comment_inbox re_box_update dp_h">
                                            <!-- grp 는 현재 noticeController -> ndetail 메서드 ->
                                            orange 의 vo 로 담겨져 있음 -->
                                            <form action="updateReply">
                                                <input type="hidden" name="ano" value="${reply_list.ano}">
                                                <input type="hidden" name="rno" value="${reply_list.rno}">
                                                <input type="hidden" name="id" value="${reply_list.id}">
                                                <div class="mg_b_10">${reply_list.id}</div>
                                                <textarea name="content" id="content"
                                                    class="comment_textarea">${reply_list.content}</textarea>
                                                <div class="comment_attach">
                                                    <input type="submit" name="commentData" id="commentData" value="수정">
                                                    <input type="reset" value="취소">
                                                    <input type="hidden" name="grp" value="${reply_list.grp}">
                                                    <input type="hidden" name="grps" value="${reply_list.grps}">
                                                    <input type="hidden" name="grpl" value="${reply_list.grpl}">
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </c:if>

                        </li>
                    </c:forEach>
                </c:if>
            </ul>
            
            <c:if test="${not empty message}">
<hr>
${message}<br>
</c:if>

            <!-- ========================== 댓글입력 ========================== -->
                <form action="saveReply" method="post">
                    <div class="CommentWriter">
                        <div class="comment_inbox">
                            <!-- nno는 현재 noticeController -> ndetail 메서드 ->
                                apple 의 vo 로 담겨있으므로, apple.nno 로 호출해야함 -->
                            <input type="hidden" name="ano" value="${Adopt_detail.ano}" id="ano">
                            <input type="hidden" name="id" id="id" value="${loginID}">
                            <div class="mg_b_10">${loginID}</div>
                            <textarea name="content" id="content" placeholder="댓글을 남겨보세요."
                                class="comment_textarea"></textarea>
                            <div class="comment_attach">
            				<c:if test="${not empty loginID}">
                                <input type="submit" name="commentData" id="commentData" value="등록">
                                <input type="hidden" name="grp" id="grp" value="0">
            				</c:if>
                            </div>
                        </div>
                    </div>
                </form>

        </div>



    </div>



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