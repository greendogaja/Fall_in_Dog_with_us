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

	<link rel="stylesheet" href="resources/css/adoptInfo_ajax.css">

<meta charset="UTF-8">
<title>Review</title>
</head>

<body>
	<div id="content">
		<div class="dog_Detail">
			<img src="${Adopt_detail.img}" alt="image" class="dog_Detail_Img">

			<table>
				<colgroup>
					<col width="140">
					<col width="*">
					<col width="140">
					<col width="*">
				</colgroup>

				<tbody>
					<tr>
						<th class="first">공고번호</th>
						<td colspan="3" class="last">fid_${Adopt_detail.dateofdis}_${Adopt_detail.dno}</td>
					</tr>

					<tr>
						<th class="first">상태</th>
						<td colspan="3" class="last">${Adopt_detail.protect}</td>
					</tr>

					<tr>
						<th class="first">품종</th>
						<td colspan="3" class="last">${Adopt_detail.breed}</td>
					</tr>

					<tr>
						<th scope="row" class="first">나이</th>
						<td class="last">${Adopt_detail.age}(년생)</td>
						<th scope="row" class="first">체중</th>
						<td class="last">${Adopt_detail.weight}</td>
					</tr>

					<tr>
						<th class="first">성별</th>
						<td colspan="3" class="last">${Adopt_detail.gender}</td>
					</tr>

					<tr>
						<th class="first">중성화</th>
						<td colspan="3" class="last">${Adopt_detail.neutering}</td>
					</tr>


					<tr>
						<th class="first">특징</th>
						<td colspan="3" class="last">${Adopt_detail.chrcter}</td>
					</tr>

					<tr>
						<th class="first">발견일자</th>
						<td class="last">${Adopt_detail.dateofdis}</td>
						<th class="first">인식번호</th>
						<td class="last">${Adopt_detail.identity}</td>
					</tr>

					<tr>
						<th class="first">관할기관</th>
						<td colspan="3" class="last">UN</td>
					</tr>

					<tr>
						<th class="first">보호센터</th>
						<td class="last">(주)FallInDog</td>
						<th class="first">보호센터연락처</th>
						<td class="last">012-345-6789</td>
					</tr>

					<tr>
						<th class="first">보호장소</th>
						<td colspan="3" class="last">울릉도 동남쪽 뱃길따라 200리</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>