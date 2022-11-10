<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="description" content="">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <!-- Title -->
            <title>Original - Lifestyle Blog Template</title>

            <!-- Favicon -->
            <link rel="icon" href="resources/img/core-img/favicon.ico">

            <!-- Style CSS -->
            <link rel="stylesheet" href="resources/css/style.css">

            <!-- Style CSS -->
            <link rel="stylesheet" href="resources/css/adopt_list.css">


            <!-- jQuery (Necessary for All JavaScript Plugins) -->
            <script defer="defer" src="resources/js/jquery/jquery-2.2.4.min.js"></script>
            <!-- Popper js -->
            <script defer="defer" src="resources/js/popper.min.js"></script>
            <!-- Bootstrap js -->
            <script defer="defer" src="resources/js/bootstrap.min.js"></script>
            <!-- Plugins js -->
            <script defer="defer" src="resources/js/plugins.js"></script>
            <!-- Active js -->
            <script defer="defer" src="resources/js/active.js"></script>

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
                <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal"
                    aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
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
                        <div class="row h-100 align-items-center">
                            <!-- Breaking News Area -->
                            <div class="col-12 col-sm-8">
                                <div class="breaking-news-area">
                                    <div id="breakingNewsTicker" class="ticker">
                                        <ul>
                                            <li><a href="#">Hello World!</a></li>
                                            <li><a href="#">Hello Universe!</a></li>
                                            <li><a href="#">Hello Original!</a></li>
                                            <li><a href="#">Hello Earth!</a></li>
                                            <li><a href="#">Hello Colorlib!</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Top Social Area -->
                            <div class="col-12 col-sm-4">
                                <div class="top-social-area">
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Pinterest"><i
                                            class="fa fa-pinterest" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i
                                            class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i
                                            class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i
                                            class="fa fa-dribbble" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Behance"><i
                                            class="fa fa-behance" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i
                                            class="fa fa-linkedin" aria-hidden="true"></i></a>
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
                                <a href="index.html" class="original-logo"><img src="resources/img/core-img/logo.png"
                                        alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Nav Area -->
                <div class="original-nav-area" id="stickyNav">
                    <div class="classy-nav-container breakpoint-off">
                        <div class="container">
                            <!-- Classy Menu -->
                            <nav class="classy-navbar justify-content-between">

                                <!-- Subscribe btn -->
                                <div class="subscribe-btn">
                                    <a href="#" class="btn subscribe-btn" data-toggle="modal"
                                        data-target="#subsModal">Subscribe</a>
                                </div>

                                <!-- Navbar Toggler -->
                                <div class="classy-navbar-toggler">
                                    <span class="navbarToggler"><span></span><span></span><span></span></span>
                                </div>

                                <!-- Menu -->
                                <div class="classy-menu" id="originalNav">
                                    <!-- close btn -->
                                    <div class="classycloseIcon">
                                        <div class="cross-wrap"><span class="top"></span><span class="bottom"></span>
                                        </div>
                                    </div>

                                    <!-- Nav Start -->
                                    <div class="classynav">
                                        <ul>
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="#">Pages</a>
                                                <ul class="dropdown">
                                                    <li><a href="index">Home</a></li>
                                                    <li><a href="aboutUs">About Us</a></li>
                                                    <li><a href="singlePost">Single Post</a></li>
                                                    <li><a href="singlePost2">입양위탁 소개 안내</a></li>
                                                    <li><a href="adopt_procedure">입양절차 작업 안내</a></li>
                                                    <li><a href="dog_list">보호/입양중인 동물</a></li>
                                                    <li><a href="dog_detail">보호/입양동물 상세</a></li>
                                                    <li><a href="adopt_board">입양 신청 게시판_</a></li>
                                                    <li><a href="contact">Contact</a></li>
                                                    <li><a href="coming-soon">Coming Soon</a></li>
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
                                            <li><a href="about-us.html">About Us</a></li>
                                            <li><a href="#">Megamenu</a>
                                                <div class="megamenu">
                                                    <ul class="single-mega cn-col-4">
                                                        <li class="title">Headline 1</li>
                                                        <li><a href="#">Mega Menu Item 1</a></li>
                                                        <li><a href="#">Mega Menu Item 2</a></li>
                                                        <li><a href="#">Mega Menu Item 3</a></li>
                                                        <li><a href="#">Mega Menu Item 4</a></li>
                                                        <li><a href="#">Mega Menu Item 5</a></li>
                                                    </ul>
                                                    <ul class="single-mega cn-col-4">
                                                        <li class="title">Headline 2</li>
                                                        <li><a href="#">Mega Menu Item 1</a></li>
                                                        <li><a href="#">Mega Menu Item 2</a></li>
                                                        <li><a href="#">Mega Menu Item 3</a></li>
                                                        <li><a href="#">Mega Menu Item 4</a></li>
                                                        <li><a href="#">Mega Menu Item 5</a></li>
                                                    </ul>
                                                    <ul class="single-mega cn-col-4">
                                                        <li class="title">Headline 3</li>
                                                        <li><a href="#">Mega Menu Item 1</a></li>
                                                        <li><a href="#">Mega Menu Item 2</a></li>
                                                        <li><a href="#">Mega Menu Item 3</a></li>
                                                        <li><a href="#">Mega Menu Item 4</a></li>
                                                        <li><a href="#">Mega Menu Item 5</a></li>
                                                    </ul>
                                                    <ul class="single-mega cn-col-4">
                                                        <li class="title">Headline 4</li>
                                                        <li><a href="#">Mega Menu Item 1</a></li>
                                                        <li><a href="#">Mega Menu Item 2</a></li>
                                                        <li><a href="#">Mega Menu Item 3</a></li>
                                                        <li><a href="#">Mega Menu Item 4</a></li>
                                                        <li><a href="#">Mega Menu Item 5</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
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
            <h3 class="content-title">보호중/입양중 유기견</h3>
        </div>


        <div>
            <ul>
                <li><a href="dog_list_S">소형견</a></li>
                <li style="background-color: skyblue"><a href="dog_list_M">중형견</a></li>
                <li><a href="dog_list_L">대형견</a></li>
            </ul>

        </div>


        <div id="searchBar">
            <form action="bchecklist" method="post">

                <input type="checkbox" name="check" value="admin">품종1&nbsp;
                <input type="checkbox" name="check" value="BMWM340">품종2&nbsp;
                <input type="checkbox" name="check" value="summer">품종3&nbsp;
                <input type="checkbox" name="check" value="namgu">품종4&nbsp;
                <input type="checkbox" name="check" value="apple">품종5&nbsp;


                <input type="submit" value="검색">
                <input type="reset" value="리셋">
            </form>
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
                <a href="" title="처음 페이지" class="com first"><span>처음</span></a>
                <a href="" title="이전 페이지" class="com prev"><span>이전</span></a>
                <a href="" title=" 페이지">1</a>
                <a href="" title=" 페이지">2</a>
                <a href="" title=" 페이지">3</a>
                <a href="" title="다음 페이지" class="com next"><span>다음</span></a>
                <a href="" title="마지막 페이지" class="com last"><span>마지막</span></a>

            </div>

            <a class="btn-go" href=""><span>글쓰기</span></a>
        </div>

    </div>










            <!-- ##### Footer Area Start ##### -->
            <footer class="footer-area text-center">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <!-- Footer Nav Area -->
                            <div class="classy-nav-container breakpoint-off">
                                <!-- Classy Menu -->
                                <nav class="classy-navbar justify-content-center">

                                    <!-- Navbar Toggler -->
                                    <div class="classy-navbar-toggler">
                                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                                    </div>

                                    <!-- Menu -->
                                    <div class="classy-menu">

                                        <!-- close btn -->
                                        <div class="classycloseIcon">
                                            <div class="cross-wrap"><span class="top"></span><span
                                                    class="bottom"></span></div>
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
                            <!-- Footer Social Area -->
                            <div class="footer-social-area mt-30">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i
                                        class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i
                                        class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i
                                        class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Dribbble"><i
                                        class="fa fa-dribbble" aria-hidden="true"></i></a>
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Behance"><i
                                        class="fa fa-behance" aria-hidden="true"></i></a>
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin"><i
                                        class="fa fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
                    target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

            </footer>
            <!-- ##### Footer Area End ##### -->

            <!-- jQuery (Necessary for All JavaScript Plugins) -->
            <script src="js/jquery/jquery-2.2.4.min.js"></script>
            <!-- Popper js -->
            <script src="js/popper.min.js"></script>
            <!-- Bootstrap js -->
            <script src="js/bootstrap.min.js"></script>
            <!-- Plugins js -->
            <script src="js/plugins.js"></script>
            <!-- Active js -->
            <script src="js/active.js"></script>

        </body>

        </html>