package com.fallindog.fid;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.CustomerService;
import usercontrol.PageMaker;
import usercontrol.SearchCriteria;



@Controller
public class CustomerController {
	@Autowired
	CustomerService service;
	
	
<<<<<<< HEAD
	@RequestMapping(value="/customerhome")
	public ModelAndView loginf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
=======
	@RequestMapping(value="/roadmove")
	public ModelAndView roadmove(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		response.setContentType("text/html; charset=UTF-8;");
		mv.setViewName("customer/road");
		return mv;
	} //contact
	
	
	@RequestMapping(value="/customerhome")
	public ModelAndView loginf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,
			SearchCriteria cri,PageMaker pageMaker) {
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

		
		cri.setSnoEno();
	    mv.addObject("faqlist", service.searchList(cri));  //ver2
	    pageMaker.setCri(cri);
	    pageMaker.setTotalRowsCount(service.searchCount(cri));   //ver2 : 조건과 일치하는 Rows 갯수 
	      
	    mv.addObject("pageMaker", pageMaker);
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
		mv.setViewName("/customer/customerHome");
		return mv;
	}
	
	
	// 자주하는 질문 
	@RequestMapping(value="/faq")
	public ModelAndView joinf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv
								, SearchCriteria cri, PageMaker pageMaker) {
		response.setContentType("text/html; charset=UTF-8;");
<<<<<<< HEAD
=======
		
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
>>>>>>> f829b8eeb9643296b21941862be638f65ee88e7f
		cri.setSnoEno();
	    mv.addObject("faqlist", service.searchList(cri));  //ver2
	    pageMaker.setCri(cri);
	    pageMaker.setTotalRowsCount(service.searchCount(cri));   //ver2 : 조건과 일치하는 Rows 갯수 
	      
	    mv.addObject("pageMaker", pageMaker);
	     
	    mv.setViewName("/customer/faq");
	    return mv;
	}
	
}
