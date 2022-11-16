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
	
	
	@RequestMapping(value="/customerhome")
	public ModelAndView loginf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		mv.setViewName("/customer/customerHome");
		return mv;
	}
	
	
	// 자주하는 질문 
	@RequestMapping(value="/faq")
	public ModelAndView joinf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv
								, SearchCriteria cri, PageMaker pageMaker) {
		response.setContentType("text/html; charset=UTF-8;");
		cri.setSnoEno();
	    mv.addObject("faqlist", service.searchList(cri));  //ver2
	    pageMaker.setCri(cri);
	    pageMaker.setTotalRowsCount(service.searchCount(cri));   //ver2 : 조건과 일치하는 Rows 갯수 
	      
	    mv.addObject("pageMaker", pageMaker);
	     
	    mv.setViewName("/customer/faq");
	    return mv;
	}
	
}
