<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 	<script>
  	$(function(){
  	 	$('#advicet').click(function(){
  	 		$.ajax({
  	 			type:'Get',
  	 			url:'advicet',
  	 			success:function(resultPage){
  	 				$('#result').html(resultPage);
  	 			},
  	 			error: function(){
  	 				$('#result').html('error');
  	 			} 
  	 		 }); //ajax
  	 	}); //advicet
 
  	});
  	
  	</script>

</head>
<body>

<div>가장 도움이 되지 않았던 점을 알려주세요.</div>
<select>
	<option value="no" >도움말에 적혀있는 해결 방법이 틀립니다</option>
	<option value="uno" >도움말을 이해하기 어렵습니다.</option>
	<option value="invo" >다른 사용 환경의 도움말이 필요합니다.(예:Mobile관련 도움말이 없습니다.)</option>
</select>
<button id="advicet">의견 보내기</button>
</body>
</html>