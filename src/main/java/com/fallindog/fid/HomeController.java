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
import noticeControl.SearchCriteria;
import service.CustomerService;
import service.NoticeService;
import vo.CustomerVO;
import vo.NoticeVO;


/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	@Autowired
	CustomerService cservice;
	@Autowired
	NoticeService nservice;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/", "/home","/index"}, method = RequestMethod.GET)
	public String index(Locale locale, Model model,CustomSearchCriteria cri,SearchCriteria ccri) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		cri.setRowsPerPage(5); 
		ccri.setRowsPerPage(5); 
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		List<CustomerVO> clist = new ArrayList<CustomerVO>();
    	clist = cservice.csearchList(cri);
    	if ( clist!=null && clist.size()>0 ) model.addAttribute("faqlist", clist); 
    	
 	List<NoticeVO> nlist = new ArrayList<NoticeVO>();
    	nlist = nservice.searchList(ccri);
    	if ( nlist!=null && nlist.size()>0 ) model.addAttribute("noticelist",nlist); 
//		

		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	



}
