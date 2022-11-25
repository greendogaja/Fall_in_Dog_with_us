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







    <!-- content -->
    <div class="content" id="content">
        <div class="content-title-wrap">
            <h3 class="content-title">보호중/입양중 유기견</h3>
        </div>


		<div class="dog-size">
            <ul class="dog-size-u">
				<li><a href="dog_list_S" class="dog-size-l">소형견</a></li>
                <li><a href="dog_list_M" class="dog-size-l">중형견</a></li>
                <li><a href="dog_list_L" class="dog-size-l" style="background-color: grey">대형견</a></li>
            </ul>
        </div>


        <div id="searchBar">
<!--             <form action="bchecklist" method="post">

                <input type="checkbox" name="check" value="apple" id="checkL">
                <label for="checkL">골든리트리버</label>
                
                <input type="checkbox" name="check" value="apple" id="checkL">
                <label for="checkL">말라뮤트</label>
                
                <input type="checkbox" name="check" value="apple" id="checkL">
                <label for="checkL">믹스견</label>
                
                <input type="checkbox" name="check" value="apple" id="checkL">
                <label for="checkL">시베리안허스키</label>
                
                <input type="checkbox" name="check" value="apple" id="checkL">
                <label for="checkL">진돗개</label>

                <input type="submit" value="검색">
            </form> -->
        </div>


        <div class="dog_div">

            <table class="dog_table">
            	<c:if test="${not empty Adopt_list}">
					
					<c:forEach var="list" varStatus="listv" items="${Adopt_list}">
						
						<c:if test="${listv.count%3 == 1}">
							<tr class="dog_tr">
						</c:if>
						
						<td class="dog_td">
							<a href="dog_detail?dno=${list.dno}"><img src="${list.img}" class="dog_img_list"><span>${list.title}</span></a>
						</td>
							
						<c:if test="${listv.count%3 == 0 || listv.last}">
							</tr>
						</c:if>

					</c:forEach>
	
				</c:if>
            </table>
            
        </div>


		<!-- paging-wrap -->

		<div class="paging-wrap">
			
			<div class="paging">
				
			<c:choose>
				<c:when test="${AdoptPageMaker.prev && AdoptPageMaker.spageNo>1}">
					<a href="dog_list_L${AdoptPageMaker.searchQuery(1)}" title="처음 페이지" class="com first"><span>처음</span></a>
					<a href="dog_list_L${AdoptPageMaker.searchQuery(AdoptPageMaker.spageNo-1)}" title="이전 페이지" class="com prev"><span>이전</span></a>
				</c:when>
				
				<c:otherwise>
					<a href="dog_list_L${AdoptPageMaker.searchQuery(1)}" title="처음 페이지" class="com first"><span>처음</span></a>
				</c:otherwise>
			</c:choose>

					
			<c:forEach  var="i" begin="${AdoptPageMaker.spageNo}" end="${AdoptPageMaker.epageNo}">
				<c:if test="${i==AdoptPageMaker.cri.currPage}">
					<font color="gray" class="com">${i}</font>
				</c:if>
						
				<c:if test="${i!=AdoptPageMaker.cri.currPage}">
					<a href="dog_list_L${AdoptPageMaker.searchQuery(i)}" class="com">${i}</a>
				</c:if>
			</c:forEach>


			<c:choose>
				<c:when test="${AdoptPageMaker.next && AdoptPageMaker.epageNo>0}">
					<a href="dog_list_L${AdoptPageMaker.searchQuery(AdoptPageMaker.epageNo+1)}" title="다음 페이지" class="com next"><span>다음</span></a>
					<a href="dog_list_L${AdoptPageMaker.searchQuery(AdoptPageMaker.lastPageNo)}" title="마지막 페이지" class="com last"><span>마지막</span></a>
				</c:when>
				
				<c:otherwise>
					<a href="dog_list_L${AdoptPageMaker.searchQuery(AdoptPageMaker.lastPageNo)}" title="마지막 페이지" class="com last"><span>마지막</span></a>
				</c:otherwise>
			</c:choose>

			</div>
				
			<c:if test="${loginID == 'admin'}">
				<a class="btn-go" href="dog_insert_form"><span>동물 등록</span></a>
            </c:if>
				
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