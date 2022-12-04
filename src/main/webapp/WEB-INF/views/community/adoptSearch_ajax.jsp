<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="resources/css/guide.css">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

<title>Review</title>
</head>

<body>
	
	<div>
		<h4>입양한 강아지 정보 검색</h4>
		<h5>공고번호 입력</h5>
		<input type="text" class="ad_search_input" name="dno" id="ip_dno" 
		value="${Adopt_detail.dno}" placeholder=" 입양한 강아지의 공고번호를 입력하세요." onsubmit="return false;">
		<button type="button" id="searchBtn" class="search_btn"></button>
	</div>
	
		<script type="text/javascript">
		
		$("#ip_dno").keydown(function(e){
			if (e.keyCode == 13) {
				$("#searchBtn").click();
			}
		});
		$("#searchBtn").on("click",function(){
			let dogno = $(this).prev().val();
			$.ajax({
				type : 'Get',
				url : 'adoptInfo?dno='+dogno,
				success : function(resultPage) {
					$('#review_resultArea').html(resultPage);
				},
				error : function() {
					$('#review_resultArea').html('~~ Ajax Error ~~');
				}
			}); //ajax
		});
	</script>
	<div>
		<div>
			<input type="button" id="chooseBtn" class="chooseBtn" value="아래 정보 선택" onclick="choose()">
			<input type="button" value="창닫기" onclick="window.close()">
			<script type="text/javascript">
				function choose(){
					opener.document.getElementById("chooseDno").value = document.getElementById("ip_dno").value;
					window.close();
				}
			</script>
		</div>
		<div id="review_resultArea" style= "width:100%; height:470px;"></div>
	</div>
</body>
</html>