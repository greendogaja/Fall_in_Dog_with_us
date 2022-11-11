




 function idCheck(){
 	
 	let id = $('#id').val();
	if ( id.length<4 || id.length>10) {
		$('#iMessage').html(' 아이디 길이는 4 이상 10 이내 입니다. !! ');
		return false;
	}else if ( id.replace(/[a-z.0-9]/gi,'').length > 0 ) {
		$('#iMessage').html(' 아이디는 영문, 숫자로만 입력 하세요. !! ');
		return false;
	}else{
		$('#iMessage').html('');
		return true;
	}
 }//idCheck
 
 
 function pwCheck(){
 	let password=$('#password').val();
	if ( password.length<4 ) {
		$('#pMessage').html(' 비밀번호 길이는 4 이상 입니다. !! ');
		return false;
	}else if ( password.replace(/[!-*.@]/gi ,'').length >= password.length ) {
		$('#pMessage').html(' 비밀번호 에는 특수문자가 반드시 포함 되어야 합니다. !!'  );
		return false;
	}else if ( password.replace(/[a-z.0-9.!-*.@]/gi,'').length > 0 ) {
		$('#pMessage').html(' 비밀번호 는 영문자, 숫자, 특수문자 로만 입력하세요. !!'  );
		return false;
	}else{
		$('#pMessage').html('');
		return true;
	} 
 }//pwCheck


 function cpCheck(){
 	let password = $('#password').val();
 	let cpassword= $('#cpassword').val();
	if ( password != cpassword ) {
		$('#ppMessage').html(' 비밀번호 가 다릅니다. !!'  );
		return false;
	}else{
		$('#ppMessage').html('');
		return true;
	}
 }//pw2Check

 function nmCheck(){
 	let name = $('#name').val();
	if ( name.length < 2) {
		$('#nMessage').html(' 성명 길이는 2 이상 입니다. !! ');
		return false;
	}else if (name.replace(/[a-z.가-힣]/gi,'').length > 0) {
		$('#nMessage').html('  성명은 영문, 한글만 입력 가능 합니다. !!'  );
		return false;
	}else{
		$('#nMessage').html('');
		return true;
	}
 }//nmCheck
 
 function nnmCheck(){
 	let nname = $('#nname').val();
	if ( nname.length < 2 || nname.legnth>8) {
		$('#nnMessage').html(' 별명 길이는 2 이상 8 이내 입니다. !! ');
		return false;
	}else if (nname.replace(/[a-z.가-힣]/gi,'').length > 0) {
		$('#nnMessage').html('  별명은 영문, 한글만 입력 가능 합니다. !!'  );
		return false;
	}else{
		$('#nnMessage').html('');
		return true;
	}
 }//nnmCheck





 function phoCheck(){
 	let phone = $('#phone').val();
	if ( phone.length < 11) {
		$('#phMessage').html(' 연락처를 입력 해주세요');
		return false;
	}else if (phone.replace(/[^0-9]/g,'').length < 11) {
		$('#phMessage').html('  연락처는 숫자만 가능합니다'  );
		return false;
	}else{
		$('#phMessage').html('');
		return true;
	}
 }//nmCheck

function dupCheck(){
    	if(iCheck ==false) iCheck=idCheck();
    	else{
    		let url ='dupCheck?id='+$('#id').val()
    		window.open(url,'_blank',
    				'width=400,height=300,resizable=yes,toolbar=no,menubar=yes,left=500,top=500');
		}		
}//dupCheck

function dupnCheck(){
    	if(nnCheck ==false) nCheck=nnmCheck();
    	else{
    		let url ='dupnCheck?nname='+$('#nname').val()
    		window.open(url,'_blank',
    				'width=400,height=300,resizable=yes,toolbar=no,menubar=yes,left=500,top=500');
		}		
}//dupCheck

function inCheck(){
	
	if(iCheck==false){$('#iMessage').html('아이디를 확인하세요'); }		
	if(pCheck==false){$('#pMessage').html('비밀번호를 확인하세요'); }		
	if(ppCheck==false){$('#ppMessage').html('비밀번호를 확인하세요'); }		
	if(nCheck==false){$('#nMessage').html('성명을 확인하세요'); }		
	if(nnCheck==false){$('#nnMessage').html('닉네임을 확인하세요'); }		
	if(phCheck==false){$('#phMessage').html('연락처를 확인하세요'); }		
	
	if(iCheck && pCheck && ppCheck && nCheck &&nnCheck && phCheck ){
		if ( confirm("~~ 정말 가입 하십니까 ? (Yes:확인 / No:취소)")==false ) {
			 alert('~~ 가입이 취소 되었습니다 ~~');
			 return false; 
		}else return true; 
		
	}else return false;
		
}//inCheck
function upCheck(){
	
	if(pCheck==false){$('#pMessage').html('비밀번호를 확인하세요'); }		
	if(ppCheck==false){$('#ppMessage').html('비밀번호를 확인하세요'); }		
	if(nCheck==false){$('#nMessage').html('성명을 확인하세요'); }		
	if(nnCheck==false){$('#nnMessage').html('닉네임을 확인하세요'); }		
	if(phCheck==false){$('#phMessage').html('연락처를 확인하세요'); }		
	
	if(pCheck && ppCheck && nCheck &&nnCheck && phCheck ){
		if ( confirm("~~ 정말 가입 하십니까 ? (Yes:확인 / No:취소)")==false ) {
			 alert('~~ 가입이 취소 되었습니다 ~~');
			 return false; 
		}else return true; 
		
	}else return false;
		
}//inCheck

	