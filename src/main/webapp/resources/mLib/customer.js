

$(function() {
	//################################################################
	//faq	
	
	 $('#guidemenu').click(function(){
       if($('#hidebox').hasClass("hidex")){
           $("#hidebox").removeClass("hidex");
       } else{
           $("#hidebox").addClass("hidex");
       }
    });//hidex //이용안내박스
	
	
	
	$('#searchType').change(function(){
			if($(this).val()=='n') $('#keyword').val('');
	});
		
	
	

	
	
	
	
	//##########################################################################
	var pageUrl = window.location.href; 
  	 $('.left-bar span').siblings('span').removeClass('clicked'); 
     
     if (pageUrl.indexOf('customerhome') > -1) { 
         $('.left-bar span').eq(4).addClass('clicked');
     } else if (pageUrl.indexOf('roadmove') > -1) { 
         $('.left-bar span').eq(6).addClass('clicked');
     } 



	var searchq =location.search;
	var params = new URLSearchParams(searchq);
	var keypa = params.get('keyword');
	
	 
  	 $('.bcho span').siblings('span').removeClass('base'); 
  	 $('.bcho span').siblings('span').addClass('bobo'); 
     if (keypa =='회원') {
         $('.bcho span').eq(1).removeClass('bobo');
         $('.bcho span').eq(1).addClass('base');
     } else if (keypa =='입양')  { 
         $('.bcho span').eq(2).removeClass('bobo');
         $('.bcho span').eq(2).addClass('base');
     } else if (keypa =='방문') { 
         $('.bcho span').eq(3).removeClass('bobo');
         $('.bcho span').eq(3).addClass('base');
     } else if (keypa =='기타') { 
         $('.bcho span').eq(4).removeClass('bobo');
         $('.bcho span').eq(4).addClass('base');
     } else{
         $('.bcho span').eq(0).removeClass('bobo');
         $('.bcho span').eq(0).addClass('base');
     } 
	     
  	$('#searchBtn').click(function(){
	self.location="customerhome"
	+"?currPage=1&rowsPerPage=5"
	+"&searchType="
	+$('#searchType').val()
	+"&keyword="
	+$('#keyword').val();
	});//searchbtn
	
	//전체
	$('#meall').click(function(){
		location.href="customerhome"
		+"?currPage=1&rowsPerPage=5"+'#area';
		
	});//전체
	//회원
	$('#meuser').click(function(){
		location.href="customerhome"
		+"?currPage=1&rowsPerPage=5"
		+"&searchType=st"
		+"&keyword=회원"+"#area";
	});//회원
	//입양
	$('#meadopt').click(function(){
		self.location="customerhome"
		+"?currPage=1&rowsPerPage=5"
		+"&searchType=st"
		+"&keyword=입양"+'#area';
	});//입양
	//방문
	$('#mevisit').click(function(){
		self.location="customerhome"
		+"?currPage=1&rowsPerPage=5"
		+"&searchType=st"
		+"&keyword=방문"+'#area';
	});//방문
	//기타
	$('#meother').click(function(){
		self.location="customerhome"
		+"?currPage=1&rowsPerPage=5"
		+"&searchType=st"
		+"&keyword=기타"+'#area';
	});//기타
	  	  
	
	
	

});//ready
	

function faqDetail(fno) {
	$.ajax({
 			type:'Get',
 			url:'faqdetail',
 			data: {
 				fno: fno 
 			},
 			success:function(resultPage){
 				$('#resultarea').html(resultPage);
 			},
 			error:function(){
 				$('#resultarea').html('~~ 서버 오류 !! 잠시후 다시 하세요 ~~');
 			}
 		}); //ajax
} //faqDetail1

	
	
	
