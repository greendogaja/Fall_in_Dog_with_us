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
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	
	<script src="resources/mLib/inCheck.js"></script>
	
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/info.css">
	
	<style type="text/css">
	   	.eMessage{
	   		color:red;
	   		font-size:small;
	   	}
	</style>
	<script>
	    let pCheck =true;
	    let ppCheck =true;
	    let nCheck =true;
	    let nnCheck =true;
	    let phCheck=true;
	    
	    $(function(){
	    	//## password
	    	$('#password').on("keyup change", function(e){
	    		pCheck=false;
	   			e.preventDefault();  
	    		pCheck = pwCheck();
	    	});
	    	//## cpassoword
	       	$('#cpassword').on("keyup change", function(e){
	    		ppCheck=false;
	   			e.preventDefault();  
	    		ppCheck = cpCheck();
	    	});
	     	 //## name
	    	$('#name').on("keyup change", function(e){
	    		nCheck=false;
	   			e.preventDefault();  
	    		nCheck = nmCheck();
	    	});
	    	//## nname
	    	$('#nname').on("keyup change", function(e){
	    		nnCheck=false;
	    		$('#submitBtn').attr('disabled','disabled');
	    		$('#idDupn').prop('disabled',false);
	   			e.preventDefault();  
	    		nnCheck = nnmCheck();
	    	});
	    	//## phone
	    	$('#phone').on("keyup change", function(e){
	    		phCheck=false;
	   			e.preventDefault();  
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
	<div class="allinfo">
		<div class="dinfo">
			<!--사이드정보창  -->
			<div class="gnb_area">
				<a href="home"><img src="resources/img/core-img/ficon.ico" width="50" height="50"></a>
				<h1>폴인독ID</h1>
			</div>
			
			<!-- 프로필사진 -->
			<div class="profile_area">
				<div class="profile_inner">
					<a href="#" class="photo">
						<img src="${user.uploadfile}" width="500" height="500" alt="프로필 이미지">
						<span class="photo_edit"></span>
					</a>
				</div>
				<div class="posiab ">
						<p class="useid">${user.nname}</p>
						<p class="usemail" >${user.id }</p>
				</div>
			</div>
		
			<!-- 정보창 -->
			<div class="header_left">
				<ul class="left_menu" role="menu">
					<li>
						<a href="info" class="left_item" role="menuitem">내정보</a>
					</li>
					<li>
						<a href="info?want=U&id=${user.id}" class="left_item" role="menuitem">내정보변경</a>
					</li>
					<li>
						<a href="qna" class="left_item" role="menuitem">1:1문의</a>
					</li>
				</ul>
			</div>
		</div><!--사이드정보창끝  -->
	
		<!--회원정보변경폼  -->
		<div class="dinfo2">
			<div class="account_box">
				<h1 class="title " >내프로필</h1>
				<form action="infoupdate" method="post" id="updateinfo" enctype="multipart/form-data">
					<ul class="account_row">
						<!-- 아이디 -->
						<li>
						<div class="row_item " style="display:none;">
							<span class="item_text">아이디 :</span>
							<input type="text" class="tcenter2" name="id" id="id" value="${user.id }">
						</div>
						</li>
						<!-- 성명  -->
						<li>
							<div class="row_item ">
								<span class="item_text">성명 :</span>
								<input type="text" class="tcenter2" name="name" id="name" value="${user.name }" maxlength="10">
								<span id="nMessage" class="eMessage" ></span>
							</div>
						</li>
						<!-- 비밀번호 -->
						<li>
							<div class="row_item ">
								<span class="item_text">비밀번호설정 :</span>
								<input type="text" class="tcenter2" name="password" id="password" placeholder="특수문자 반드시 포함" value="${user.password}">
									<span id="pMessage" class="eMessage" ></span>
							</div>
						</li>
						<!-- 비밀번호 확인 -->
						<li>
							<div class="row_item ">
								<span class="item_text">비밀번호확인 :</span>
								<input type="text" class="tcenter2" name="cpassword" id="cpassword" placeholder="특수문자 반드시 포함" value="${user.password}">
									<span id="ppMessage" class="eMessage"></span>
							</div>
						</li>
						<!-- 별명 -->
						<li>
							<div class="row_item " style="flex-wrap: wrap;">
								<span class="item_text">별명 :</span>
								<input type="text" class="tcenter2" name="nname" id="nname" placeholder="한글,영문 8자이내" value="${user.nname}" maxlength="8">
									<button type="button"  id="idDupn" onclick="return nickCheck()" style="margin-left:30px; font-size: 15; border-radius: 20%;" disabled>중복확인</button><br>
									<span id="nnMessage" class="eMessage" style="margin:auto;"></span>
							</div>
						</li>
						<!-- 생년월일 -->
						<li>
							<div class="row_item ">
								<span class="item_text">생년월일 :</span>
								<select name="yy" id="yy" class="tcenter2">
										<c:set var="today" value="<%=new java.util.Date() %>"/>
										<fmt:formatDate value="${today}" pattern="yyyy" var="start"/>
										<option value="${user.yy}">${user.yy}</option>
										<c:forEach begin="0" end="${start - 1950}" var="result"	step="1">
											<option value="<c:out value="${start-result}" />"
												<c:if test="${start-result == detail.YY}"> selected="selected"</c:if>><c:out
													value="${start-result}" /></option>
										</c:forEach>
									</select>
									-
									<select name="mm" id="mm" class="tcenter2">
									 <option value="${user.mm}">${user.mm}</option>
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
									-
									<select name="dd" id="dd" class="tcenter2">
										  <option value="${user.dd}">${user.dd}</option>
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
						</li>
						<!-- 성별 -->
						<li>
							<div class="row_item ">
								<span class="item_text">성별 :</span>
								<c:choose>
									<c:when test="${user.gender == '남자'}">
										<label> <input name="gender" type="radio" value="남자"
											checked> 남자
										</label>     
										<label> <input name="gender" type="radio" value="여자">
											여자
										</label>
									</c:when>
									<c:when test="${user.gender == '여자'}">
										<label> <input name="gender" type="radio" value="남자"
											> 남자
										</label>     
										<label> <input name="gender" type="radio" value="여자" checked>
											여자
										</label>
									</c:when>
							   </c:choose>
							</div>
						</li>
						<!-- 연락처 -->
						<li>
							<div class="row_item ">
								<span class="item_text">연락처 :</span>
								<input type="text" class="tcenter2" name="phone" id="phone" placeholder="연락처 번호를(-포함) 입력해주세요" value="${user.phone}" maxlength="11">
									<span id="phMessage" class="eMessage"></span>
							</div>
						</li>
						<!-- 이메일 -->
						<li>
							<div class="row_item ">
								<span class="item_text">이메일 :</span>
								<c:if test="${!empty user.email }">
								<input type="email" class="tcenter2" name="email"
								id="email" 
								value="${user.email }">
								</c:if>
								<c:if test="${empty user.email }">
								<input type="email" class="tcenter2" name="email"
								id="email" placeholder="e-mail(있는 경우)"
								value="">
								</c:if>
							</div>
						</li>
						<!-- 프로필사진 -->
						<li>
							<div class="row_item ">
								<span class="item_text">프로필 :</span>
								<img src="${user.uploadfile}" class="select_img" style="width: 50; height: 50; ">
									<input type="hidden" name="uploadfile" value="${user.uploadfile}"><br>
									<input type="file"
									name="uploadfilef" id="uploadfilef" class="form-control upload" style="width:230;"
									placeholder=" " value="${user.uploadfile}">
									<!--script -->
									<script>
						            $('#uploadfilef').change(function(){
						               if(this.files && this.files[0]) {
						                  var reader = new FileReader;
						                      reader.onload = function(e) {
						        	              $(".select_img").attr("src", e.target.result)
						                		                       .width(50).height(50); 
						            	          } // onload_function
						                      reader.readAsDataURL(this.files[0]);
						                } // if   
						            }); //change
						       		</script>
							</div>
						</li>
					</ul>
					<!--버튼  -->
					<div class="form-group" style="margin-top: 10px;">
							<input onclick="userDeleteBtn()" class="btn btn-primary"  type="button" value="회원탈퇴">
							<script>
							function userDeleteBtn() {

								Swal.fire({
									title: '회원탈퇴 하시겠습니까?',
									showDenyButton: true,
									showCancelButton: true,
									confirmButtonText: '네',
									denyButtonText: `아니오`,
								}).then((result) => {
									if (result.isConfirmed) {
										Swal.fire('제출 되었습니다.', '', 'success');
										Swal.fire({
											icon: 'success',
											title: '회원탈퇴 되었습니다.',
											showConfirmButton: false,
											timer: 3000
										});
										setTimeout(() => location.href='userdelete?id=${user.id}' , 1000);
										
									} else if (result.isDenied) {
										Swal.fire('회원탈퇴 하지 못하였습니다.', '', 'info');
									}
								});
						}//userDelete

							</script>
							<div style="float:right;">
							<input  id="submitBtn" onclick="upCheck()"  type="button" value="수정하기"
								class="btn btn-primary"  >
							<input class="btn btn-primary" type="reset" value="취소">
						</div>
					</div>
				</form>
			</div> <!--account_box끝  -->
		</div><!-- 회원정보끝 -->
	</div> <!--all박스끝  -->
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