package com.fallindog.fid;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< .merge_file_a12964
import javax.servlet.http.HttpSession;
=======
>>>>>>> .merge_file_a13668

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< .merge_file_a12964
import org.springframework.web.servlet.ModelAndView;
=======
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
>>>>>>> .merge_file_a13668

import service.CustomerService;
import usercontrol.PageMaker;
import usercontrol.SearchCriteria;
<<<<<<< .merge_file_a12964
=======
import vo.CustomerVO;
>>>>>>> .merge_file_a13668



@Controller
public class CustomerController {
	@Autowired
	CustomerService service;
	
	
	@RequestMapping(value="/roadmove")
	public ModelAndView roadmove(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
<<<<<<< .merge_file_a12964
		response.setContentType("text/html; charset=UTF-8;");
		mv.setViewName("customer/road");
		return mv;
	} //contact
	
	
	@RequestMapping(value="/customerhome")
	public ModelAndView loginf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,
			SearchCriteria cri,PageMaker pageMaker) {
		response.setContentType("text/html; charset=UTF-8;");
		
=======
		mv.setViewName("customer/road");
		return mv;
	} //contact
	@RequestMapping(value="/procedure")
	public ModelAndView procedure(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		mv.setViewName("customer/procedure");
		return mv;
	} //contact
	
	
	@RequestMapping(value="/customerhome")
	public ModelAndView customerhome(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,
			SearchCriteria cri,PageMaker pageMaker) {
>>>>>>> .merge_file_a13668
		String searchType  = request.getParameter("searchType");
		String keyword  = request.getParameter("keyword");
		String namekey  = request.getParameter("namekey");
		String phonekey = request.getParameter("phonekey");
		String idkey = request.getParameter("idkey");
		if( searchType == null || searchType.length()<1 ) cri.setSearchType(null); 
		else cri.setSearchType(searchType);
		if( keyword == null || keyword.length()<1 ) cri.setKeyword(null); 
		else cri.setKeyword(keyword);
		 if( namekey == null || namekey.length()<1 ) cri.setNamekey(null); 
		 else cri.setNamekey(namekey);
		 if( phonekey == null || phonekey.length()<1 ) cri.setPhonekey(null); 
		 else cri.setPhonekey(phonekey);
		 if(  idkey == null || idkey.length()<1 ) cri.setIdkey(null); 
		 else cri.setIdkey(idkey);

		
		cri.setSnoEno();
	    mv.addObject("faqlist", service.searchList(cri));  //ver2
	    pageMaker.setCri(cri);
	    pageMaker.setTotalRowsCount(service.searchCount(cri));   //ver2 : 조건과 일치하는 Rows 갯수 
	      
	    mv.addObject("pageMaker", pageMaker);
		mv.setViewName("/customer/customerHome");
		return mv;
	}
	
	
	// 자주하는 질문 
	@RequestMapping(value="/faq")
<<<<<<< .merge_file_a12964
	public ModelAndView joinf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv
=======
	public ModelAndView faq(HttpServletRequest request, HttpServletResponse response,ModelAndView mv
>>>>>>> .merge_file_a13668
								, SearchCriteria cri, PageMaker pageMaker) {
		response.setContentType("text/html; charset=UTF-8;");
		
		String searchType  = request.getParameter("searchType");
		String keyword  = request.getParameter("keyword");
		String namekey  = request.getParameter("namekey");
		String phonekey = request.getParameter("phonekey");
		String idkey = request.getParameter("idkey");
		if( searchType == null || searchType.length()<1 ) cri.setSearchType(null); 
		else cri.setSearchType(searchType);
		if( keyword == null || keyword.length()<1 ) cri.setKeyword(null); 
		else cri.setKeyword(keyword);
		 if( namekey == null || namekey.length()<1 ) cri.setNamekey(null); 
		 else cri.setNamekey(namekey);
		 if( phonekey == null || phonekey.length()<1 ) cri.setPhonekey(null); 
		 else cri.setPhonekey(phonekey);
		 if(  idkey == null || idkey.length()<1 ) cri.setIdkey(null); 
		 else cri.setIdkey(idkey);

		
		
		System.out.println("#####"+cri);
		cri.setSnoEno();
	    mv.addObject("faqlist", service.searchList(cri));  //ver2
	    pageMaker.setCri(cri);
	    pageMaker.setTotalRowsCount(service.searchCount(cri));   //ver2 : 조건과 일치하는 Rows 갯수 
	      
	    mv.addObject("pageMaker", pageMaker);
	     
	    mv.setViewName("/customer/faq");
	    return mv;
	}
	
<<<<<<< .merge_file_a12964
=======
	@RequestMapping(value="/faqdetail")
	public ModelAndView faqdetail(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, CustomerVO vo) {
		String uri = "/customer/faqDetail";
		vo = service.selectOne(vo);
		if ( vo != null ) {
			if ( "U".equals(request.getParameter("want")))
				uri = "/customer/faqUpdatef";
		mv.addObject("max",service.selectMax(vo));
		mv.addObject("min",service.selectMin(vo));
		mv.addObject("faqone", vo);
		} //faqdetail_if
		mv.setViewName(uri);
		return mv;
	}//faqdetail

	
	//디테일ajax
	@RequestMapping(value="/advicet")
	public ModelAndView advicet(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		mv.setViewName("/customer/adviceTrue");
		return mv;
	}
	@RequestMapping(value="/advicef")
	public ModelAndView advicef(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		mv.setViewName("/customer/adviceFalse");
		return mv;
	}
	
	
	
	// ** Insert : 새글등록
	@RequestMapping(value="/faqinsertf")
	public ModelAndView faqinsertsertf(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		mv.setViewName("/customer/faqInsertf");
		return mv;
	}
	@RequestMapping(value="/faqinsert", method=RequestMethod.POST)
	public ModelAndView faqinsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, CustomerVO vo, RedirectAttributes rttr) {
	
		String uri = "redirect:customerhome";
		if ( service.insert(vo)>0 ) {
			rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~");
			uri = "/customer/faqInsertf";
		}
		mv.setViewName(uri);
		return mv;
	} //faqinsert

	
	@RequestMapping(value="/faqupdate", method=RequestMethod.POST)
	public ModelAndView faqupdate(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, CustomerVO vo) {
		String uri = "/customer/faqDetail";
		mv.addObject("faqone",vo);
		if ( service.update(vo) > 0 ) {
			mv.addObject("message", "~~ 글수정 성공 ~~"); 
		}else {
			mv.addObject("message", "~~ 글수정 실패, 다시 하세요 ~~");
			uri = "/customer/faqUpdatef";
		}
		
		mv.setViewName(uri);
		return mv;
	}//faqupdate
	
	@RequestMapping(value="/faqdelete")
	public ModelAndView faqdelete(HttpServletRequest request, HttpServletResponse response, 
									ModelAndView mv, CustomerVO vo, RedirectAttributes rttr) {
		// 1. 요청분석
		// => Delete 성공: redirect:blist
		//           실패: message 표시, redirect:bdetail
		String uri = "redirect:customerhome";
		System.out.println("####"+vo);
		// 2. Service 처리
		if ( service.delete(vo) > 0 ) {
			rttr.addFlashAttribute("message", "~~ 글삭제 성공 ~~"); 
		}else {
			rttr.addFlashAttribute("message", "~~ 글삭제 실패, 다시 하세요 ~~");
			uri = "redirect:faqdetail?fno="+vo.getFno();
		} // Service
		
		// 3. 결과(ModelAndView) 전달 
		mv.setViewName(uri);
		return mv;
	} //bdelete
>>>>>>> .merge_file_a13668
}
