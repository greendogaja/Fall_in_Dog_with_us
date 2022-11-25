package com.fallindog.fid;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import service.FreeService;
import vo.FreeReplyVO;
import vo.FreeVO;



@Controller 
public class FreeController {
  
	@Autowired
	FreeService service;
	
	// ** Image (File) Download
	// => 전달받은 파일패스와 이름으로 File 객체를 만들어 뷰로 전달
	@RequestMapping(value="/freeDnload")
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
			realPath = "C:\\MTest\\project\\fall_in_dog\\src\\main\\webapp\\resources\\img\\uploadImage\\free" 
						+ fileName;
		else  // 톰캣서버에 배포 후 : 서버내에서의 위치
			realPath += "resources\\img\\uploadImage\\free\\" + fileName ;
		
		// 2) 해당 화일 객체화
		File file = new File(realPath);
		mv.addObject("downloadFile", file);
		
		// 3) response 처리 (response의 body 에 담아줌) 
		// => Java File 객체 -> File 정보를 response 에 전달
		mv.setViewName("downloadView");
    	return mv;
	} //dnload
  
	// ** List
	@RequestMapping(value="/freeList")
	public ModelAndView freeList(HttpServletRequest request, HttpServletResponse response,
						ModelAndView mv, SearchCriteria cri, PageMaker pageMaker) {
		
		// Criteria
		cri.setSnoEno();
		mv.addObject("banana", service.searchList(cri));
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri)); 
    	mv.addObject("pageMaker", pageMaker);
    	
    	mv.setViewName("community/freeList");
    	return mv;
	}

	// ** WriterList
	@RequestMapping(value="/freeWriterList")
	public ModelAndView freeWriterList(HttpServletRequest request, HttpServletResponse response,
						ModelAndView mv, SearchCriteria cri, PageMaker pageMaker) {
		// Criteria
		cri.setSnoEno();
		mv.addObject("mango", service.w_searchList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri)); 
    	mv.addObject("pageMaker", pageMaker);
    	
	  	mv.setViewName("community/freeWriterList");
	  	return mv;
	}
	
	
	// 글내용, 댓글리스트, 대댓글리스트
	@RequestMapping(value="/freeDetail")
	public ModelAndView freeDetail(HttpServletRequest request, HttpServletResponse response, 
								ModelAndView mv, FreeVO vo, FreeReplyVO rvo) {
		// 1. 요청분석
		String uri = "community/freeDetail";
		
		// 2. Service 처리
		int freeno = Integer.parseInt((String)request.getParameter("freeno"));
		vo.setFreeno(freeno);
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
			uri = "community/freeUpdateF";
			
			// 2.3)	결과전달		
			mv.addObject("apple", vo);
		}else mv.addObject("message", "~~ 글번호에 해당하는 자료가 없습니다. ~~");
		
		// 3. 댓글리스트 
		rvo.setFreeno(freeno);
		System.out.println("freeno => "+freeno);
		
		// 댓글리스트
		List<FreeReplyVO> list = new ArrayList<FreeReplyVO>();
    	list = service.replySelectList(rvo);
    	
    	if ( list!=null ) {
    		mv.addObject("orange", list); 
    		System.out.println("댓글리스트 불러오기 성공! TTT");
    		System.out.println("~~~댓글list"+list);
    	}else {
    		mv.addObject("message", "~~ 출력 자료가 없습니다 ~~");
    		System.out.println("댓글리스트 불러오기 실패 FFF");
    	}
		
		// 화면 출력
		mv.setViewName(uri);
		return mv;
	} //ndetail 
	
	
	@RequestMapping(value="/freeInsertF")
	public ModelAndView freeInsertF(HttpServletRequest request, HttpServletResponse response, 
								ModelAndView mv) {
		mv.setViewName("community/freeInsertF");
		return mv;
	}
	
	// ** Insert : 새글등록
	@RequestMapping(value="/freeInsert", method=RequestMethod.POST)
	public ModelAndView freeInsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, FreeVO vo, RedirectAttributes rttr) throws IOException  {
		System.out.println("새글등록 vo =>"+vo);
		// 1. 요청분석
		String uri = "redirect:freeList";
		
		
		//image upload
		String realPath = request.getRealPath("/"); // deprecated Method
		System.out.println("** realPath => "+realPath);
		
		if ( realPath.contains(".eclipse.") )  // eclipse 개발환경 (배포전)
			realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\free\\";
		else  // 톰캣서버에 배포 후 : 서버내에서의 위치
			realPath += "resources\\img\\uploadImage\\free\\" ;
		
		File f1 = new File(realPath);
		if ( !f1.exists() ) f1.mkdir();
		
		String file1 = null;
		
		MultipartFile uploadfilef = vo.getUploadfilef(); // file 의 내용 및 화일명 등 전송된 정보들이 들어있음
		if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
			file1 = realPath + uploadfilef.getOriginalFilename(); // 경로완성
			uploadfilef.transferTo(new File(file1)); // Image저장
			
			file1="resources/img/uploadImage/free/"+uploadfilef.getOriginalFilename();
			vo.setImg(file1);
		}
		
		
		System.out.println("새글등록 vo img 담겻는지 => "+vo);
		
		
		// 2. Service 처리
		
		if ( service.insert(vo)>0 ) {
			rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~");
			uri = "community/freeInsertF";
		}
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		return mv;
	} //ninsert	
	
	// ** Update : 글수정하기
	@RequestMapping(value="/freeUpdate", method=RequestMethod.POST)
	public ModelAndView freeUpdate(HttpServletRequest request, HttpServletResponse response,
								ModelAndView mv, FreeVO vo)  throws IOException {
		// 1. 요청분석

		
		int freeno = Integer.parseInt((String)request.getParameter("freeno"));
		vo.setFreeno(freeno);
		String uri = "redirect:freeDetail?freeno="+freeno;
		
		
		mv.addObject("apple",vo);
		// => Update 성공/실패 모두 출력시 필요하므로
		
		System.out.println("글수정 vo =>"+vo);
		
		// image upload
		String realPath = request.getRealPath("/"); // deprecated Method
		System.out.println("** realPath => " + realPath);

		if (realPath.contains(".eclipse.")) // eclipse 개발환경 (배포전)
			realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\free\\";
		else // 톰캣서버에 배포 후 : 서버내에서의 위치
			realPath += "resources\\img\\uploadImage\\free\\";

		File f1 = new File(realPath);
		if (!f1.exists())
			f1.mkdir();

		String file1 = null;
		
		MultipartFile uploadfilef = vo.getUploadfilef(); // file 의 내용 및 화일명 등 전송된 정보들이 들어있음
		if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
			file1 = realPath + uploadfilef.getOriginalFilename(); // 경로완성
			uploadfilef.transferTo(new File(file1)); // Image저장
			
			file1="resources/img/uploadImage/free/"+uploadfilef.getOriginalFilename();
			vo.setImg(file1);
		}
		
		// 2. Service 처리
		if ( service.update(vo) > 0 ) {
			mv.addObject("message", "~~ 글수정 성공 ~~"); 
		}else {
			mv.addObject("message", "~~ 글수정 실패, 다시 하세요 ~~");
			uri = "community/freeUpdate";
		}
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		System.out.println("글수정"+mv);
		System.out.println("##글수정"+vo);
		return mv;
	}
	
	// ** Delete : 글 삭제
	@RequestMapping(value="/freeDelete")
	public ModelAndView freeDelete(HttpServletRequest request, HttpServletResponse response, 
									ModelAndView mv, FreeVO vo, RedirectAttributes rttr) {
		String uri = "redirect:freeList";
		
		// 2. Service 처리
		if ( service.delete(vo) > 0 ) {
			rttr.addFlashAttribute("message", "~~ 글삭제 성공 ~~"); 
		}else {
			rttr.addFlashAttribute("message", "~~ 글삭제 실패, 다시 하세요 ~~");
			uri = "redirect:freeDetail?freeno="+vo.getFreeno();
		} // Service
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		return mv;
	} //bdelete

	// 대댓글입력
	@RequestMapping(value="/f_rereplyInsert")
	public ModelAndView rereplyInsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, FreeReplyVO cvo, 
			RedirectAttributes rttr) {
	
		int freeno = Integer.parseInt(request.getParameter("freeno"));
		cvo.setFreeno(freeno); 
    	
		// 대댓글의 grpl = 1, 모댓글 = 0(default)
		cvo.setGrpl(1);
		
		System.out.println("대댓vo => "+cvo);
		
		String uri = "redirect:freeDetail?freeno="+freeno;
		
		if(service.rereplyInsert(cvo)>0) {
			rttr.addFlashAttribute("message", "~~ 대댓글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 대댓글 등록 실패, 다시 하세요 ~~");
		}
		
		System.out.println("대댓vo2 => "+cvo);
		mv.setViewName(uri);
		return mv;
		
	}
	
	
	// 댓글입력
	@RequestMapping(value="/f_replyInsert")
	public ModelAndView replyInsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, FreeReplyVO cvo, 
			RedirectAttributes rttr) {
	
		int freeno = Integer.parseInt(request.getParameter("freeno"));
		cvo.setFreeno(freeno);  
		
		String uri = "redirect:freeDetail?freeno="+freeno;
		
		if(service.rereplyInsert(cvo)>0) {
			rttr.addFlashAttribute("message", "~~ 댓글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 댓글 등록 실패, 다시 하세요 ~~");
		}
		
		System.out.println("~ncinsert cvo"+cvo);
		mv.setViewName(uri);
		return mv;
		
	}	
	
	// ncdelete 댓글 삭제
	@RequestMapping(value="/f_replyDelete")
	public ModelAndView replyDelete(HttpServletRequest request, HttpServletResponse response, 
									ModelAndView mv, FreeReplyVO cvo, RedirectAttributes rttr) {

		String uri = "redirect:freeDetail?freeno="+cvo.getFreeno();
		
		// 2. Service 처리
		if ( service.replyDelete(cvo) > 0 ) {
			rttr.addFlashAttribute("message", "~~ 댓글삭제 성공 ~~"); 
		}else {
			rttr.addFlashAttribute("message", "~~ 댓글삭제 실패, 다시 하세요 ~~");
		} // Service
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		return mv;
	} //bdelete
	
	
	// ** 댓글수정
	@RequestMapping(value="/f_replyUpdate")
	public ModelAndView replyUpdate(HttpServletRequest request, HttpServletResponse response,
								ModelAndView mv, FreeReplyVO cvo) {
		// 1. 요청분석

		
		int freeno = Integer.parseInt(request.getParameter("freeno"));
		cvo.setFreeno(freeno);  
		String uri = "redirect:freeDetail?freeno="+freeno;
		
		
		mv.addObject("apple",cvo);
		// => Update 성공/실패 모두 출력시 필요하므로
		
		System.out.println("댓글수정 vo =>"+cvo);
		
		
		// 2. Service 처리
		if ( service.replyUpdate(cvo) > 0 ) {
			mv.addObject("message", "~~ 댓글수정 성공 ~~"); 
		}else {
			mv.addObject("message", "~~ 댓글수정 실패, 다시 하세요 ~~");
		}
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		System.out.println("댓글수정"+mv);
		System.out.println("##댓글수정"+cvo);
		return mv;
	}
} //Controller
 