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
	
	<script src="resources/mLib/inCheck.js"></script>
	<!-- alert -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="sweetalert2.min.js"></script>
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/joinf.css">  
	<link rel="stylesheet" href="sweetalert2.min.css">
    
    <style type="text/css">
    	.eMessage{
    		color:red;
    		font-size:small;
    	}
    </style>
    <script>
	    let iCheck =false;
	    let pCheck =false;
	    let ppCheck =false;
	    let nCheck =false;
	    let nnCheck =false;
	    let phCheck=false;
	    let bCheck=false;
	    
	    $(function(){
	    	//## ID
	    	$('#id').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();  
	    			$('#name').focus();
	    		}
	    	}).focusout(function(){
	    		iCheck = idCheck();
	    	});
	    	//## password
	    	$('#password').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();  
	    		}
	    	}).focusout(function(){
	    		pCheck = pwCheck();
	    	});
	    	//## cpassoword
	    	$('#cpassword').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();		}
	    	}).focusout(function(){
	    		ppCheck = cpCheck();
	    	});
	    	//## name
	    	$('#name').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();  
	    			$('#nname').focus();
	    		}
	    	}).focusout(function(){
	    		nCheck = nmCheck();
	    	});
	    	//## nname	
	    	$('#nname').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();  
	    			$('#email').focus();
	    		}
	    	}).focusout(function(){
	    		nnCheck = nnmCheck();
	    	});
	    	//## 생년월일
	    	$('#yy').change(function(){
	    		bCheck = bryCheck();
	    		if(bCheck == false)
	        	$('#mm').prop('disabled',true);
	        	$('#dd').prop('disabled',true);
	    		if(bCheck == true) {
	    		$('#mm').prop('disabled',false);
	    			return true;
	    		}
	    	});
	    	$('#mm').change(function(){
	    		bCheck = bryCheck();
	    		bCheck = false;
	    		bCheck = brmCheck(); 
	    		if(bCheck == false)
	    		$('#yy').prop('disabled',true);
	    		$('#dd').prop('disabled',true);
	    		if(bCheck == true){
	    			$('#yy').prop('disabled',false);
	    			$('#dd').prop('disabled',false);
	    			return true;
	    		}
	    	});
	    	$('#dd').change(function(){
	    		bCheck = brdCheck();
	    		if(bCheck == false)
	        		$('#yy').prop('disabled',true);
	        		$('#mm').prop('disabled',true);
	    		if(bCheck == true){ 
	    			$('#mm').prop('disabled',false);
	    			return true;
	    		}
	    	});
	    	//## email
	    	$('#email').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();  
	    			$('#phone').focus();
	    		}
	    	});
	    	//## email
	    	$('#phone').keydown(function(e){
	    		if(e.which==13){
	    			e.preventDefault();  
	    			$('#submitBtn').focus();
	    		}
	    	}).focusout(function(){
	    		phCheck = phoCheck();
	    	});
	    })//ready
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
	<hr>
	<!--회원가입  -->
	<div class="container">
		<div class="row container3" >
			<div class="col-md-8 ">
				<h1 class="entry-title tcenter">
					<span>회원가입</span>
				</h1>
				<hr>
				<!-- 회원가입폼  -->
				<form action="join" class="form-horizontal" method="post" 
					name="signup" id="signup" enctype="multipart/form-data" style="margin:auto;">
					
					<!-- 아이디  -->
					<div class="form-group">
						<label class="control-label col-sm-3">아이디<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9 ">
							<div class="input-group">
									<input type="text" class="form-control" name="id" id="id" placeholder="영문,숫자 10자이내" value="" maxlength="10">
							<button type="button"  id="idDup" onclick="dupCheck()" style="margin-left:30px;">ID 중복확인</button>
							</div>
							<small>귀하의 이메일, ID는 계정 보안, 승인 및x 액세스 복구를 위해 사용됩니다.</small><br>
							<span id="iMessage" class="eMessage"></span>
						</div>
					</div>
					
					<!-- 비밀번호  -->
					<div class="form-group">
						<label class="control-label col-sm-3">비밀번호 설정<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
								 <input type="password"
									class="form-control" name="password" id="password"
									placeholder="특수문자 반드시 포함" value="">
									<span id="pMessage" class="eMessage"></span>
						</div>
					</div>
					
					<!-- 비밀번호 확인  -->
					<div class="form-group">
						<label for="password" class="control-label col-sm-3">비밀번호 확인<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
								 <input type="password"
									class="form-control" name="cpassword" id="cpassword"
									placeholder="암호를 확인" value="">
									<span id="ppMessage" class="eMessage"></span>
						</div>
					</div>
					
					<!-- 성명  -->
					<div class="form-group">
						<label class="control-label col-sm-3">성명<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<input type="text" class="form-control" name="name"
								id="name" placeholder="여기에 이름을 입력하세요" value="" maxlength="8">
								<span id="nMessage" class="eMessage"></span>
						</div>
					</div>
					
					<!-- 별명  -->
					<div class="form-group">
						<label class="control-label col-sm-3">별명<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9 ">
							<div class="input-group">
									<input type="text" class="form-control" name="nname" id="nname" placeholder="한글,영문 8자이내" value="" maxlength="8">
							<button type="button"  id="idDup" onclick="nickCheck()" style="margin-left:30px;">별명 중복확인</button>
							</div>
							<small>귀하의 커뮤니티 사용을 위해 사용됩니다.</small><br>
							<span id="nnMessage" class="eMessage"></span>
						</div>
					</div>
					
					<!-- 생년월일 -->
					<div class="form-group">
						<label class="control-label col-sm-3">생년월일 <span
							class="text-danger">*</span></label>
						<div class="col-sm-8">
							<div class="form-inline">
								<div class="form-group">
									<select name="yy" id="yy" class="form-control">
										<c:set var="today" value="<%=new java.util.Date() %>"/>
										<fmt:formatDate value="${today}" pattern="yyyy" var="start"/>
										<option value="">선택</option>
										<c:forEach begin="0" end="${start - 1950}" var="result"	step="1">
											<option value="<c:out value="${start-result}" />"
												<c:if test="${start-result == detail.YY}"> selected="selected"</c:if>><c:out
													value="${start-result}" /></option>
										</c:forEach>
									</select>
								</div>
								
								<div class="form-group">
									<select name="mm" id="mm" class="form-control" disabled>
									 <option value="">선택</option>
										  <c:forEach var="i" begin="1" end="12">
										  <c:choose>
										      <c:when test="${i lt 10 }">
										          <option value="0${i}">0${i}</option>
										      </c:when>
										      <c:otherwise>
										          <option value="${i}">${i}</option>
										      </c:otherwise>
										  </c:choose>
										  </c:forEach>
									</select>
								</div>
								<div class="form-group">
									<select name="dd" id="dd" class="form-control" disabled>
										  <option value="">선택</option>
										  <c:forEach var="i" begin="1" end="31">
										  <c:choose>
										      <c:when test="${i lt 10 }">
										          <option value="0${i}">0${i}</option>
										      </c:when>
										      <c:otherwise>
										          <option value="${i}">${i}</option>
										      </c:otherwise>
										  </c:choose>
										  </c:forEach>
									</select>
								</div>
								<span id="brMessage" class="eMessage"></span>
							</div>
						</div>
					</div>
					
					<!-- 성별 -->
					<div class="form-group">
						<label class="control-label col-sm-3">성별 <span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<label> <input name="gender" type="radio"
								value="남자" checked> 남자
							</label>     
							<label> <input name="gender" type="radio"
								value="여자"> 여자
							</label>
						</div>
					</div>
					
					<!-- 이메일  -->
					<div class="form-group">
						<label class="control-label col-sm-3">이메일<br>
							<small>(있는 경우)</small></label>
						<div class="col-md-5 col-sm-8">
							<input type="email" class="form-control" name="email"
								id="email" placeholder="e-mail(있는 경우)"
								value="">
						</div>
					</div>
					
					<!-- 연락처 -->
					<div class="form-group">
						<label class="control-label col-sm-3">연락처<span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8" style="max-width:50%;">
							<input type="text" class="form-control" name="phone" id="phone"
							placeholder="연락처 번호를 입력해주세요. (-)미포함  " value="" maxlength="11">
							<span id="phMessage" class="eMessage"></span>
						</div>
					</div>
					
					<!-- 프로필사진  -->
					<div class="form-group">
						<label class="control-label col-sm-3">프로필 사진<br>
							<small>(선택사항)</small></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
									<img src="" class="select_img">
									<input type="file"
									name="uploadfilef" id="uploadfilef" class="form-control upload"
									placeholder="" >
							</div>
						</div>
						<script>
						  $('#uploadfilef').change(function(){
				               if(this.files && this.files[0]) {
				                  var reader = new FileReader;
				                      reader.onload = function(e) {
				        	              $(".select_img").attr("src", e.target.result)
				                		                       .width(100).height(100); 
				            	          } // onload_function
				                      reader.readAsDataURL(this.files[0]);
				                } // if   
				            }); //change
						</script>
					</div>
					
					<!-- 버튼  -->
					<div class="form-group">
						<div class="col-xs-offset-3 col-sm-2 mauto" style="max-width:30%; display:flex; justify-content:space-between;">
							<input id="submitBtn" onclick="inCheck()"  type="button" value="가입하기"
								class="btn btn-primary" disabled>
							<input class="btn btn-primary" type="reset" value="취소">
						</div>
					</div>
				</form>
			</div> <!-- col-md-8 -->
		</div><!-- row container3 -->
	</div> <!-- container  -->
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