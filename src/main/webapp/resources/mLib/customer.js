$(function() {
	 $('#guidemenu').click(function(){
       if($('#hidebox').hasClass("hidex")){
           $("#hidebox").removeClass("hidex");
       } else{
           $("#hidebox").addClass("hidex");
       }
    });//hidex //이용안내박스
	
	
	$('#searchType').change(function(){
			if($(this).val()=='n') $('#keyword').val('');
	});//클리어검색창
		
	var pageUrl = window.location.href; 
  	 $('.left-bar span').siblings('span').removeClass('clicked'); 
     
     if (pageUrl.indexOf('customerhome') > -1) { 
         $('.left-bar span').eq(4).addClass('clicked');
     } else if (pageUrl.indexOf('roadmove') > -1) { 
         $('.left-bar span').eq(2).addClass('clicked');
     } else if (pageUrl.indexOf('qna') > -1) { 
         $('.left-bar span').eq(5).addClass('clicked');
     } else if (pageUrl.indexOf('procedure') > -1) { 
         $('.left-bar span').eq(3).addClass('clicked');
     } //사이드정보창 클릭한곳 색지정

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
     } //faq 클릭검색 색지정
     
     
    //검색창 
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
	//기타sideBoxsideBoxsideBoxsideBox
	$('#meother').click(function(){
		self.location="customerhome"
		+"?currPage=1&rowsPerPage=5"
		+"&searchType=st"
		+"&keyword=기타"+'#area';
	});//기타
	  	  
	//사이드반응형
	$('#box').on('mouseover',function(){
		console.log("Tt");
		$(this).children('div').children('div').children('.big_title').toggleClass('sideBox1');
		$(this).children('div').children('div').children('.sideBox').toggleClass('sideBox2');
	}).on('mouseout',function(){
		console.log("Tt");
		$(this).children('div').children('div').children('.big_title').toggleClass('sideBox1');
		$(this).children('div').children('div').children('.sideBox').toggleClass('sideBox2');
	});

});//ready
	
	
	
