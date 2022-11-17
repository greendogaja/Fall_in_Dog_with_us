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
	<script src="resources/mLib/customer.js"></script>
        <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/faq.css">
    
    
</head>
<body>
	<div id="area">
		<div class="title">
			<h2 class="detail">자주묻는질문(FAQ)</h2>
		</div>
		<div>
			<ul class="menu-line">
				<li><a href="#">전체</a></li>
				<li><a href="#">회원</a></li>
				<li><a href="#">입양</a></li>
				<li><a href="#">방문</a></li>
				<li><a href="#">커뮤니티</a></li>
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
					<a href="faq${pageMaker.searchQuery(1)}" class="pmove">처음</a>&nbsp;
			<a href="faq${pageMaker.searchQuery(pageMaker.spageNo-1)}" class="pmove">&lt;</a>&nbsp;&nbsp; 
			
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
					<a href="faq${pageMaker.searchQuery(i)}" class="pmove">${i}</a>&nbsp;
		</c:if>
			</c:forEach>
			<!-- Next, Last -->
			<c:choose>
				<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
					<a href="faq${pageMaker.searchQuery(pageMaker.epageNo+1)}" class="pmove" >&nbsp;&gt;</a>
					<a href="faq${pageMaker.searchQuery(pageMaker.lastPageNo)}" class="pmove">&nbsp;마지막</a>
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