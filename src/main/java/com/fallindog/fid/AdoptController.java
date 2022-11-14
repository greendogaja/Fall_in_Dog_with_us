package com.fallindog.fid;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.AdoptService;
import service.DogService;
import vo.AdoptVO;
import vo.DogVO;


@Controller 
public class AdoptController {
  
	@Autowired 
	DogService Dservice;
	
	@Autowired 
	AdoptService Aservice;
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	입양 위탁 안내
	@RequestMapping(value="/adopt_guide")
	public ModelAndView adopt_guide(ModelAndView mv) {
		
		mv.setViewName("adopt_dog/adopt_guide");
		return mv;
		
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	입양 위탁 절차
	@RequestMapping(value="/adopt_procedure")
	public ModelAndView adopt_procedure(ModelAndView mv) {
		
		mv.setViewName("/adopt_dog/adopt_procedure");
		return mv;
		
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	입양 신청 게시판
	@RequestMapping(value="/adopt_board")
	public ModelAndView adopt_board(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
	
		List<AdoptVO> list = new ArrayList<AdoptVO>();
	  	list = Aservice.selectList();
	  	
	  	if (list != null) {
	  		mv.addObject("Adopt_list", list);
	  		
	  	}else {
	  		mv.addObject("message", "__Adopt_list is Not Found__");
	  		
	  	}
	  	mv.setViewName("/adopt_dog/adopt_board");
	  	return mv;
	
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
	@RequestMapping(value="/adopt_detail")
	public ModelAndView adopt_detail(HttpServletRequest request, HttpServletResponse response, 
									 ModelAndView mv, AdoptVO vo) {

		String uri = "adopt_dog/adopt_detail";
		vo = Aservice.selectOne(vo);

		if (vo != null) {
//			조회수 증가
			String loginID = (String)request.getSession().getAttribute("loginID");
			if (!vo.getId().equals(loginID) && !"U".equals(request.getParameter("jCode"))) {
				if (Aservice.countUp(vo) > 0) vo.setCnt(vo.getCnt()+1); 
					
			}
//			수정 시 이동경로
			if ( "U".equals(request.getParameter("jCode"))) {
				uri = "adopt_dog/adopt_update_form";
				
			}
			mv.addObject("Adopt_detail", vo);
			
			}else {
				mv.addObject("message", "__Adopt_detail is Not Found__");
				
			}
			mv.setViewName(uri);
			return mv;
			
		}
		
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		/*
		 * 
		 * // ** Insert : 새글등록
		 * 
		 * @RequestMapping(value="/ninsertf") public ModelAndView
		 * ninsertf(HttpServletRequest request, HttpServletResponse response,
		 * ModelAndView mv) { mv.setViewName("guide/noticeInsertF"); return mv; }
		 * 
		 * @RequestMapping(value="/ninsert", method=RequestMethod.POST) public
		 * ModelAndView ninsert(HttpServletRequest request, HttpServletResponse
		 * response, ModelAndView mv, NoticeVO vo, RedirectAttributes rttr) {
		 * System.out.println("##########################"+vo); // 1. 요청분석 String uri =
		 * "redirect:noticeList"; // 2. Service 처리 if ( service.insert(vo)>0 ) {
		 * rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~"); }else {
		 * mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~"); uri =
		 * "guide/noticeInsertF"; } // 3. 결과(ModelAndView) 전달 mv.setViewName(uri);
		 * return mv; } //ninsert
		 * 
		 * // ** Update : 글수정하기
		 * 
		 * @RequestMapping(value="/nupdate", method=RequestMethod.POST) public
		 * ModelAndView nupdate(HttpServletRequest request, HttpServletResponse
		 * response, ModelAndView mv, NoticeVO vo) { // 1. 요청분석 String uri =
		 * "guide/noticeDetail"; mv.addObject("apple",vo); // => Update 성공/실패 모두 출력시
		 * 필요하므로
		 * 
		 * System.out.println("~~~~~~~~~~~~~~~~~~~~~~"+vo);
		 * 
		 * // 2. Service 처리 if ( service.update(vo) > 0 ) { mv.addObject("message",
		 * "~~ 글수정 성공 ~~"); }else { mv.addObject("message", "~~ 글수정 실패, 다시 하세요 ~~"); uri
		 * = "guide/noticeUpdateF"; }
		 * 
		 * // 3. 결과(ModelAndView) 전달 mv.setViewName(uri);
		 * System.out.println("###################################"+mv);
		 * System.out.println("###################################"+vo); return mv; }
		 * 
		 * // ** Delete : 글 삭제
		 * 
		 * @RequestMapping(value="/ndelete") public ModelAndView
		 * bdelete(HttpServletRequest request, HttpServletResponse response,
		 * ModelAndView mv, NoticeVO vo, RedirectAttributes rttr) { // 1. 요청분석 // =>
		 * Delete 성공: redirect:blist // 실패: message 표시, redirect:bdetail String uri =
		 * "redirect:noticeList";
		 * 
		 * // 2. Service 처리 if ( service.delete(vo) > 0 ) {
		 * rttr.addFlashAttribute("message", "~~ 글삭제 성공 ~~"); }else {
		 * rttr.addFlashAttribute("message", "~~ 글삭제 실패, 다시 하세요 ~~"); uri =
		 * "redirect:ndetail?nno="+vo.getNno(); } // Service
		 * 
		 * // 3. 결과(ModelAndView) 전달 mv.setViewName(uri); return mv; } //bdelete
		 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	보호/입양중 목록
	@RequestMapping(value="/dog_list_S")
	public ModelAndView dog_list_S(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		
		List<DogVO> list = new ArrayList<DogVO>();
	  	list = Dservice.selectList_S();
	  	
	  	if (list != null) {
	  		mv.addObject("Adopt_list", list);
	  		
	  	}else {
	  		mv.addObject("message", "__Adopt_list is Not Found__");
	  		
	  	}
	  	mv.setViewName("/adopt_dog/dog_list_S");
	  	return mv;
	  	
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	보호/입양중 목록
	@RequestMapping(value="/dog_list_M")
	public ModelAndView dog_list_M(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		
		List<DogVO> list = new ArrayList<DogVO>();
	  	list = Dservice.selectList_M();
	  	
	  	if (list != null) {
	  		mv.addObject("Adopt_list", list);
	  		
	  	}else {
	  		mv.addObject("message", "__Adopt_list is Not Found__");
	  		
	  	}
	  	mv.setViewName("/adopt_dog/dog_list_M");
	  	return mv;
	  	
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	보호/입양중 목록
	@RequestMapping(value="/dog_list_L")
	public ModelAndView dog_list_L(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		
		List<DogVO> list = new ArrayList<DogVO>();
	  	list = Dservice.selectList_L();
	  	
	  	if (list != null) {
	  		mv.addObject("Adopt_list", list);
	  		
	  	}else {
	  		mv.addObject("message", "__Adopt_list is Not Found__");
	  		
	  	}
	  	mv.setViewName("/adopt_dog/dog_list_L");
	  	return mv;
	  	
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	상세 페이지
	@RequestMapping(value="/dog_detail")
	public ModelAndView dog_detail(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, DogVO vo) {
		
		String uri = "/adopt_dog/dog_detail";
		vo = Dservice.selectOne(vo);
		
		if (vo != null) {
//			수정 시 이동경로
			if ("U".equals(request.getParameter("jCode"))) {
				uri = "/adopt_dog/dog_update_form";
				
			}
			mv.addObject("Adopt_detail", vo);
			
		}else {
			mv.addObject("message", "__Adopt_detail is Not Found__");
			
		}
		
		mv.setViewName(uri);
		return mv;
		
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	글쓰기
	@RequestMapping(value="/dog_insert_form")
	public ModelAndView dog_insert_form(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		
		mv.setViewName("/adopt_dog/dog_insert_form");
		return mv;
		
	}
	
	
	@RequestMapping(value="/dog_insert", method=RequestMethod.POST)
	public ModelAndView dog_insert(HttpServletRequest request, HttpServletResponse response,
								   ModelAndView mv, DogVO vo, RedirectAttributes rttr) {
		
		String uri = "redirect:dog_list_S";
		
		if (Dservice.insert(vo)>0) {
			rttr.addFlashAttribute("message", "__Insert Success__");
			
		}else {
			mv.addObject("message", "__Insert Fail__");
			uri = "/adopt_dog/dog_insert_form";
			
		}
		mv.setViewName(uri);
		return mv;
		
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}	// AdoptController





















 