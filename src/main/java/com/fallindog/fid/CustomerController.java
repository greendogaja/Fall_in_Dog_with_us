package com.fallindog.fid;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.UserService;
import usercontrol.PageMaker;
import usercontrol.SearchCriteria;
import vo.UserVO;



@Controller
public class CustomerController {
	@Autowired
	UserService service;
	
	
	
	// 자주하는 질문 
	@RequestMapping(value="/faq")
	public ModelAndView joinf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		mv.setViewName("/customer/faq");
		return mv;
	}
	
}
