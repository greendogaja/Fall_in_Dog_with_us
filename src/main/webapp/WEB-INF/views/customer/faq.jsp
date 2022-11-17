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
<<<<<<< HEAD
	
=======
	<script src="resources/mLib/customer.js"></script>
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
        <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
<<<<<<< HEAD
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    
    <script>
	$(function(){
		$('#searchType').change(function(){
			if($(this).val()=='n') $('#keyword').val('');
		});
		
		$('#searchBtn').click(function(){
			self.location="customerhome"
			+"${pageMaker.makeQuery(1)}"
			+"&searchType="
			+$('#searchType').val()
			+"&keyword="
			+$('#keyword').val()
		});
	});
	 
	</script>
=======
    
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/faq.css">
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
    
    
</head>
<body>
	<div id="area">
		<div class="title">
			<h2 class="detail">자주묻는질문(FAQ)</h2>
		</div>
		<div>
<<<<<<< HEAD
			<ul>
				<li><a href="#"></a>전체</li>
				<li><a href="#"></a>회원</li>
				<li><a href="#"></a>입양</li>
				<li><a href="#"></a>방문</li>
				<li><a href="#"></a>커뮤니티</li>
=======
			<ul class="menu-line">
				<li><a href="#">전체</a></li>
				<li><a href="#">회원</a></li>
				<li><a href="#">입양</a></li>
				<li><a href="#">방문</a></li>
				<li><a href="#">커뮤니티</a></li>
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
			</ul>
		</div>
		<div id="searchbar">
			<div class="form-group">
				<select class="form-control" name="searchType" id="searchType">
					<option value="n"
						${pageMaker.cri.searchType=='null' ? 'selected' : ''}>전체</option>
					<option value="st"
						${pageMaker.cri.searchType=='st' ? 'selected' : ''}>제목</option>
					<option value="sc"
						${pageMaker.cri.searchType=='sc' ? 'selected' : ''}>내용</option>
				</select>
			</div>
			<div>
				<input type="text" class="form-control" id="keyword" name="keyword"
					value="${pageMaker.cri.keyword}">
			</div>
			<button id="searchBtn" class="btn btn-default">Search</button>
		</div>


		<div class="form-group searchresult">
			<span class="btn btn-default"> 총<span class="badge">(${pageMaker.totalRowsCount})개[전체:${pageMaker.cri.currPage}/${pageMaker.epageNo}]페이지</span>
			</span>
		</div>

		<table>
			<tbody>
				<c:forEach var="faq" items="${faqlist}">
					<tr>
						<td><a href="#">${faq.title }</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div align="center" class="pagecs">
			<!-- First, Prev -->
			<c:choose>
				<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">
<<<<<<< HEAD
					<a href="faq${pageMaker.searchQuery(1)}">처음</a>&nbsp;
			<a href="faq${pageMaker.searchQuery(pageMaker.spageNo-1)}">&lt;</a>&nbsp;&nbsp; 
=======
					<a href="faq${pageMaker.searchQuery(1)}" class="pmove">처음</a>&nbsp;
			<a href="faq${pageMaker.searchQuery(pageMaker.spageNo-1)}" class="pmove">&lt;</a>&nbsp;&nbsp; 
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
			
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
<<<<<<< HEAD
					<a href="faq${pageMaker.searchQuery(i)}">${i}</a>&nbsp;
=======
					<a href="faq${pageMaker.searchQuery(i)}" class="pmove">${i}</a>&nbsp;
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
		</c:if>
			</c:forEach>
			<!-- Next, Last -->
			<c:choose>
				<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
<<<<<<< HEAD
					<a href="faq${pageMaker.searchQuery(pageMaker.epageNo+1)}">&nbsp;&gt;</a>
					<a href="faq${pageMaker.searchQuery(pageMaker.lastPageNo)}">&nbsp;마지막</a>
=======
					<a href="faq${pageMaker.searchQuery(pageMaker.epageNo+1)}" class="pmove" >&nbsp;&gt;</a>
					<a href="faq${pageMaker.searchQuery(pageMaker.lastPageNo)}" class="pmove">&nbsp;마지막</a>
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
				</c:when>
				<c:otherwise>
					<font color="Gray">&nbsp;&gt;&nbsp;마지막</font>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!--area  -->
</body>
</html>