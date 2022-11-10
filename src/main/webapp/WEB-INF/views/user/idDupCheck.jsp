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


function idOK(){
	opener.$('#id').val('${newId}');
	
	opener.$('#submit').prop('disabled',false);
	opener.$('#idDup').prop('disabled',true);
	
	opener.$('#id').prop('readonly',true);
	opener.$('#password').focus();
	
	window.close();
	
}//idOK
</script>


<style>
   #wrap {
      margin-left: 0;
      text-align: center;
   }
</style>

</head>
<body>
<div id="wrap" >
	<form action="dupCheck" method="get">
	<legend>아이디 중복확인</legend>
			<div class="form-group">
				<label class="control-label col-sm-3">아이디<span
					class="text-danger">*</span></label>
				<div class="col-md-8 col-sm-9 ">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span> <input type="text"
							class="form-control" name="id" id="id" placeholder="영문,숫자 10자이내"
							value=""> <span id="iMessage" class="eMessage"></span>
						<button type="button" id="idDup" onclick="dupCheck()"
							style="margin-left: 30px;">ID 중복확인</button>
					</div>
					<small>귀하의 이메일, ID는 계정 보안, 승인 및 액세스 복구를 위해 사용됩니다.</small>
				</div>
			</div>
			<span id="pMessage" class="eMessage"></span> 
	</form>
	<hr>
    <div id="msgBlock">
    	<c:if test="${isUse=='T'}">
    		${newId}는 사용 가능합니다 &nbsp;&nbsp;
    		<input type="button" value="사용" onclick="idOK()">
    	</c:if>
    	<c:if test="${isUse=='F' }">
    		${newId}는 사용중 <br>
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