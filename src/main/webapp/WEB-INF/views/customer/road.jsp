<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/guide.css">
</head>
<body>
<div id="kakaoMap" class="kakaoMap"></div>
	<script>
		var mapContainer = document.getElementById('kakaoMap'), // 지도를 표시할 div 
			mapOption = {
		    	center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		    	level: 3 
				};  
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		var geocoder = new kakao.maps.services.Geocoder();
		var address = '경기 성남시 분당구 돌마로 46' ;
		var description = '폴인독 , FallInDog' ; // description: 설명,묘사
		 
		geocoder.addressSearch(address, function(result, status) { 
			if (status === daum.maps.services.Status.OK) { 
				
				var coords = new daum.maps.LatLng(result[0].y, result[0].x);  
				var marker = new daum.maps.Marker({ map: map, position: coords }); 
				var infowindow = new daum.maps.InfoWindow({ 
					content: '<div style="width:150px;text-align:center;padding:6px 0;">'+description+'</div>' }); 
				infowindow.open(map, marker); 
				map.setCenter(coords); 
			} // if
			}); // addressSearch
	</script>
 	
 	<br>
        <!-- 오시는길, 대중교통 이용시 -->
        <div class="con_box">
        <h5>오시는길</h5>
        <table class="ctable">
        <tbody>
        	<tr>
        		<th>주소</th>
        		<td>경기도 성남시 분당구 돌마로 46</td>
        	</tr>
        	<tr>
        		<th>전화</th>
        		<td>031-777-7777</td>
        	</tr>
        	<tr>
        		<th>이메일</th>
        		<td>fallindog@fallindog.com</td>
        	</tr>
        </tbody>
        </table>
        </div>
        <br>
        <div class="con_box">
        <h5>대중교통 이용시</h5>
        <table class="ctable">
        <tbody>
        	<tr>
        		<th>지하철</th>
        		<td>신분당선 미금역 6번 출구 (도보 1분 소요)</td>
        	</tr>
        	<tr>
        		<th>버스</th>
        		<td>
        			① 일반버스 : 250, 310, 380, 700-2, 720-1 <br>
        			② 마을버스 : 5, 7, 11, 14, 15, 16, 17, 32, 37<br>
					③ 광역버스 : 1241, 9409
        		</td>
        	</tr>
        	<tr>
        		<th>자동차</th>
        		<td>경기도 성남시 분당구 돌마로 46</td>
        	</tr>
        </tbody>
        </table>
        </div>
</body>
</html>