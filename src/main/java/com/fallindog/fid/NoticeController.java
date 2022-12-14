package com.fallindog.fid;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import noticeControl.PageMaker;
import noticeControl.SearchCriteria;
import service.DogService;
import service.FreeService;
import service.NoticeService;
import service.UserService;
import vo.NoticeVO;



@Controller 
public class NoticeController {
  
	@Autowired 
	NoticeService service;
	@Autowired 
	UserService uservice;
	@Autowired 
	FreeService fservice;
	@Autowired 
	DogService dservice;
	
	
	 	
	@RequestMapping(value="/aboutUs")
	public ModelAndView aboutUs(ModelAndView mv, SearchCriteria cri ) {
		
		mv.addObject("userCount", uservice.userCount());
		mv.addObject("freeCount", fservice.searchCount(cri));
		mv.addObject("protectCount", dservice.protectCount());
		mv.addObject("adoptCount", dservice.adoptCount());
		
		mv.setViewName("guide/about-us");
		return mv;
	} //aboutUs
	

	@RequestMapping(value="/contact")
	public ModelAndView contact(ModelAndView mv) {
		mv.setViewName("guide/contact");
		return mv;
	} //contact
	
	// ** Image (File) Download
	// => 전달받은 파일패스와 이름으로 File 객체를 만들어 뷰로 전달
	@RequestMapping(value="/dnload")
	public ModelAndView dnload(HttpServletRequest request, ModelAndView mv,
								@RequestParam("dnfile")	String dnfile) {
				// => 동일기능 : String dnfile = request.getParameter("dnfile");
		
		// 1) 파일 & path 확인
		// => 요청 Parameter 를 확인
		String realPath = request.getRealPath("/"); // deprecated Method
		String fileName = dnfile.substring(dnfile.lastIndexOf("/")+1); 
		// dnfile => resources\\uploadImage\\aaa.gif 
		
		// => 개발중인지, 배포했는지 에 따라 결정
		// => 해당화일 File 찾기
		if ( realPath.contains(".eclipse.") )  // eslipse 개발환경 (배포전)
			realPath = "C:\\MTest\\project\\fall_in_dog\\src\\main\\webapp\\resources\\img\\uploadImage\\notice" 
						+ fileName;
		else  // 톰캣서버에 배포 후 : 서버내에서의 위치
			realPath += "resources\\img\\uploadImage\\notice\\" + fileName ;
		
		// 2) 해당 화일 객체화
		File file = new File(realPath);
		mv.addObject("downloadFile", file);
		
		// 3) response 처리 (response의 body 에 담아줌) 
		// => Java File 객체 -> File 정보를 response 에 전달
		mv.setViewName("downloadView");
    	return mv;
	} //dnload
  
	// ** NoticeList
	@RequestMapping(value="/noticeList")
	public ModelAndView noticelist(HttpServletRequest request, HttpServletResponse response,
						ModelAndView mv, SearchCriteria cri, PageMaker pageMaker) {
		
		// Criteria
		cri.setSnoEno();
		mv.addObject("banana", service.searchList(cri));
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri)); 
    	mv.addObject("pageMaker", pageMaker);
    	
    	mv.setViewName("guide/noticeList");
    	return mv;
	}

	// ** noticeWriterList
	@RequestMapping(value="/nwriterList")
	public ModelAndView nwriterList(HttpServletRequest request, HttpServletResponse response,
						ModelAndView mv, SearchCriteria cri, PageMaker pageMaker) {
		// Criteria
		cri.setSnoEno();
		mv.addObject("nwriterList", service.w_searchList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri)); 
    	mv.addObject("pageMaker", pageMaker);
    	
	  	mv.setViewName("guide/noticeWriterList");
	  	return mv;
	}
	
	
	// 글내용
	@RequestMapping(value="/ndetail")
	public ModelAndView ndetail(HttpServletRequest request, HttpServletResponse response, 
								ModelAndView mv, NoticeVO vo) {
		// 1. 요청분석
		String uri = "guide/noticeDetail";
		
		// 2. Service 처리
		int nno = Integer.parseInt((String)request.getParameter("nno"));
		vo.setNno(nno);
		vo = service.selectOne(vo);
		System.out.println("#################################"+vo);
		
		if ( vo != null ) { 
			// 2.1) 조회수 증가
			String loginID = (String)request.getSession().getAttribute("loginID");
			if ( !vo.getId().equals(loginID) && !"U".equals(request.getParameter("jCode")) ) {
				// => 조회수 증가
				if ( service.countUp(vo) > 0 ) vo.setCnt(vo.getCnt()+1); 
			} //if_증가조건
			
			// 2.2) 수정요청 인지 확인
			if ( "U".equals(request.getParameter("jCode")))
			uri = "guide/noticeUpdateF";
			
			// 2.3)	결과전달		
			mv.addObject("apple", vo);
		}else mv.addObject("message", "~~ 글번호에 해당하는 자료가 없습니다. ~~");
		
		// 화면 출력
		mv.setViewName(uri);
		return mv;
	} //ndetail 
	
	
	// ** Insert : 새글등록
	@RequestMapping(value="/ninsertf")
	public ModelAndView ninsertf(HttpServletRequest request, HttpServletResponse response, 
								ModelAndView mv) {
		mv.setViewName("guide/noticeInsertF");
		return mv;
	}
	
	@RequestMapping(value="/ninsert", method=RequestMethod.POST)
	public ModelAndView ninsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, NoticeVO vo, RedirectAttributes rttr) throws IOException  {
		System.out.println("새글등록 vo =>"+vo);
		// 1. 요청분석
		String uri = "redirect:noticeList";
		
		
		//image upload
		String realPath = request.getRealPath("/"); // deprecated Method
		System.out.println("** realPath => "+realPath);
		
		if ( realPath.contains(".eclipse.") )  // eclipse 개발환경 (배포전)
			realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\notice\\";
		else  // 톰캣서버에 배포 후 : 서버내에서의 위치
			realPath += "resources\\img\\uploadImage\\notice\\" ;
		
		File f1 = new File(realPath);
		if ( !f1.exists() ) f1.mkdir();
		
		String file1, file2 = null;
		
		MultipartFile uploadfilef = vo.getUploadfilef(); // file 의 내용 및 화일명 등 전송된 정보들이 들어있음
		if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
			file1 = realPath + uploadfilef.getOriginalFilename(); // 경로완성
			uploadfilef.transferTo(new File(file1)); // Image저장
			
			file1="resources/img/uploadImage/notice/"+uploadfilef.getOriginalFilename();
			vo.setImg(file1);
		}
		
		MultipartFile mainImgFile = vo.getMainImgFile(); // file 의 내용 및 화일명 등 전송된 정보들이 들어있음
		if ( mainImgFile !=null && !mainImgFile.isEmpty() ) {
			file2 = realPath + mainImgFile.getOriginalFilename(); // 경로완성
			mainImgFile.transferTo(new File(file2)); // Image저장
			
			file2="resources/img/uploadImage/notice/"+mainImgFile.getOriginalFilename();
			vo.setMainImg(file2);
		}		
		
		
		
		// 2. Service 처리
		
		if ( service.insert(vo)>0 ) {
			rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~");
			uri = "guide/noticeInsertF";
		}
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		return mv;
	} //ninsert	
	
	// ** Update : 글수정하기
	@RequestMapping(value="/nupdate", method=RequestMethod.POST)
	public ModelAndView nupdate(HttpServletRequest request, HttpServletResponse response,
								ModelAndView mv, NoticeVO vo)  throws IOException {
		// 1. 요청분석

		
		int nno = Integer.parseInt((String)request.getParameter("nno"));
		vo.setNno(nno);
		String uri = "redirect:ndetail?nno="+nno;
		
		
		mv.addObject("apple",vo);
		// => Update 성공/실패 모두 출력시 필요하므로
		
		System.out.println("글수정 vo =>"+vo);
		
		// image upload
		String realPath = request.getRealPath("/"); // deprecated Method
		System.out.println("** realPath => " + realPath);

		if (realPath.contains(".eclipse.")) // eclipse 개발환경 (배포전)
			realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\notice\\";
		else // 톰캣서버에 배포 후 : 서버내에서의 위치
			realPath += "resources\\img\\uploadImage\\notice\\";

		File f1 = new File(realPath);
		if (!f1.exists())
			f1.mkdir();

		String file1 = null;
		
		MultipartFile uploadfilef = vo.getUploadfilef(); // file 의 내용 및 화일명 등 전송된 정보들이 들어있음
		if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
			file1 = realPath + uploadfilef.getOriginalFilename(); // 경로완성
			uploadfilef.transferTo(new File(file1)); // Image저장
			
			file1="resources/img/uploadImage/notice/"+uploadfilef.getOriginalFilename();
			vo.setImg(file1);
		}
		
		// 2. Service 처리
		if ( service.update(vo) > 0 ) {
			mv.addObject("message", "~~ 글수정 성공 ~~"); 
		}else {
			mv.addObject("message", "~~ 글수정 실패, 다시 하세요 ~~");
			uri = "guide/noticeUpdateF";
		}
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		System.out.println("글수정"+mv);
		System.out.println("##글수정"+vo);
		return mv;
	}
	
	// ** Delete : 글 삭제
	@RequestMapping(value="/ndelete")
	public ModelAndView bdelete(HttpServletRequest request, HttpServletResponse response, 
									ModelAndView mv, NoticeVO vo, RedirectAttributes rttr) {
		// 1. 요청분석
		// => Delete 성공: redirect:blist
		//           실패: message 표시, redirect:bdetail
		String uri = "redirect:noticeList";
		
		// 2. Service 처리
		if ( service.delete(vo) > 0 ) {
			rttr.addFlashAttribute("message", "~~ 글삭제 성공 ~~"); 
		}else {
			rttr.addFlashAttribute("message", "~~ 글삭제 실패, 다시 하세요 ~~");
			uri = "redirect:ndetail?nno="+vo.getNno();
		} // Service
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		return mv;
	} //bdelete
} //NoticeController
 