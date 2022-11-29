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
    <script defer="defer" src="resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script defer="defer" src="resources/js/plugins.js"></script>
    <!-- Active js -->
    <script defer="defer" src="resources/js/active.js"></script>
	<script src="resources/mLib/inCheck.js"></script>
    <!-- Title -->
    <title>Fall IN Dog - 폴인독</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/ficon.ico">
    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/joinf.css">



<script>
	function niOK(){
		opener.$('#nname').val('${newNick}');
		opener.$('#submitBtn').prop('disabled',false);
		window.close();
	}//niOK
</script>
</head>
<body>
	<div id="wrap" >
		<!--별명 중복확인  -->
		<form action="nickCheck" method="get">
			<legend>별명 중복확인</legend>
					<div class="form-group">
						<label class="control-label col-sm-3">별명<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9 ">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input type="text"
									class="form-control" name="nname" id="nname" placeholder="영문,숫자 10자이내"
									value=""> 
								<button type="submit"  class="doubch" onclick="return nnmCheck()"
									style="margin-left: 30px;">별명 중복확인</button>
									<span id="nnMessage" class="eMessage"></span>
							</div>
						</div>
					</div>
		</form>
		<hr>
		<!--사용 가능,불가능  -->
	    <div id="msgBlock">
	    	<c:if test="${useNick =='T'}">
	    		${newNick}는 사용 가능합니다 &nbsp;&nbsp;
	    		<input type="button" value="사용" onclick="niOK()">
	    	</c:if>
	    	<c:if test="${useNick =='F' }">
	    		${newNick}는 사용중 <br>
	    		다시 입력 하세요 
	    		<script>
	    			$('#id').focus();
	    			opener.document.getElementById('id').value='';
	    		</script>
	    	</c:if>
	    </div>
	</div>
</body>
</html>