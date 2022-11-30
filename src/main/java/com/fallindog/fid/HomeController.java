package com.fallindog.fid;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import customercontrol.CustomSearchCriteria;
import dogcontrol.DogSearchCriteria;
import noticeControl.SearchCriteria;
import service.CustomerService;
import service.DogService;
import service.NoticeService;
import service.ReviewService;
import vo.CustomerVO;
import vo.DogVO;
import vo.NoticeVO;
import vo.ReviewVO;


/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	@Autowired
	CustomerService cservice;
	@Autowired
	NoticeService nservice;
	@Autowired
	DogService dservice;
	@Autowired
	ReviewService rservice;	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//홈화면
	@RequestMapping(value = {"/", "/home","/index"}, method = RequestMethod.GET)
	public String index(Locale locale, Model model,CustomSearchCriteria ccri,SearchCriteria cri,DogSearchCriteria dcri) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		ccri.setRowsPerPage(4); 
		cri.setRowsPerPage(4); 
		dcri.setRowsPerPage(4);
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		//공지사항
		List<NoticeVO> nlist = new ArrayList<NoticeVO>();
		nlist = nservice.searchList(cri);
		if ( nlist!=null && nlist.size()>0 ) model.addAttribute("noticelist",nlist); 

		//자주묻는질문
		List<CustomerVO> clist = new ArrayList<CustomerVO>();
    	clist = cservice.csearchList(ccri);
    	if ( clist!=null && clist.size()>0 ) model.addAttribute("faqlist", clist); 
    	
    	
    	//분양목룍
    	List<DogVO> dlist = new ArrayList<DogVO>();
    	dlist = dservice.dog_list_S(dcri);
    	if ( dlist!=null && dlist.size()>0 ) model.addAttribute("adoptlist",dlist); 

    	
    	List<ReviewVO> rlist = new ArrayList<ReviewVO>();
    	rlist = rservice.searchList(cri);
    	if ( rlist!=null && rlist.size()>0 ) model.addAttribute("reviewlist",rlist); 


		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}//home
	



}//class
