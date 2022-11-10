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
import vo.AdoptVO;


@Controller 
public class AdoptController {
  
	@Autowired 
	AdoptService service;
	
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
	
//	보호/입양중 목록
	@RequestMapping(value="/dog_list_S")
	public ModelAndView dog_list_S(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		
		List<AdoptVO> list = new ArrayList<AdoptVO>();
	  	list = service.selectList_S();
	  	
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
		
		List<AdoptVO> list = new ArrayList<AdoptVO>();
	  	list = service.selectList_M();
	  	
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
		
		List<AdoptVO> list = new ArrayList<AdoptVO>();
	  	list = service.selectList_L();
	  	
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
	public ModelAndView dog_detail(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, AdoptVO vo) {
		
		String uri = "/adopt_dog/dog_detail";
		vo = service.selectOne(vo);
		
		if (vo != null) {
//			수정 시 이동경로
			if ("U".equals(request.getParameter("jCode"))) {
				uri = "/adopt_dog/Adopt_update_form";
				
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
								   ModelAndView mv, AdoptVO vo, RedirectAttributes rttr) {
		
		String uri = "redirect:dog_list_S";
		
		if (service.insert(vo)>0) {
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





















 