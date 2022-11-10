package com.fallindog.fid;

import java.io.File;
import java.io.IOException;

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

import service.UserService;
import vo.UserVO;



@Controller
public class UserController {
	@Autowired
	UserService service;
	PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	
	
	// join : 회원가입양식
	@RequestMapping(value="/joinf")
	public ModelAndView joinf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		mv.setViewName("/user/joinForm");
		return mv;
	}
	
	//**id 중복확인
	@RequestMapping(value="/dupCheck")
	public ModelAndView dupCheck(HttpServletRequest request, HttpServletResponse response,
									ModelAndView mv,UserVO vo) {
	
		mv.addObject("newId", vo.getId());
		
		vo=service.selectOne(vo);
    	if ( vo != null ) {
    		mv.addObject("isUse","F"); 
    	}else {
    		mv.addObject("isUse", "T");
    	}
    	mv.setViewName("user/idDupCheck");
    	return mv;
	}
	//**별명 중복확인
	@RequestMapping(value="/dupnCheck")
	public ModelAndView dupnCheck(HttpServletRequest request, HttpServletResponse response,
			ModelAndView mv,UserVO vo) {
		
		mv.addObject("newNick", vo.getNname());
		
		vo=service.selectOne(vo);
		if ( vo != null ) {
			mv.addObject("use","F"); 
		}else {
			mv.addObject("use", "T");
		}
		mv.setViewName("user/nickCheck");
		return mv;
	}
	
	//** 회원가입
	@RequestMapping(value="/join",method = RequestMethod.POST)
	public ModelAndView join(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,UserVO vo) throws IOException {
		  String uri = "home";
	      String realPath = request.getRealPath("/");
	      System.out.println("** realPath => "+realPath);
	     
	      if ( realPath.contains(".eclipse.") ) 
	    	 realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\user\\";
	      else 
	         realPath += "resources\\img\\uploadImage\\user\\" ;
	      
	      File f1 = new File(realPath);
	      if ( !f1.exists() ) f1.mkdir();
	      String file1, file2="resources/img/uploadImage/user/basicman4.png"; 
	      
	      MultipartFile uploadfilef = vo.getUploadfilef(); 
	      if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
	         file1 = realPath + uploadfilef.getOriginalFilename(); 
	         uploadfilef.transferTo(new File(file1)); 
	         
	         file2="resources/img/uploadImage/user/"+uploadfilef.getOriginalFilename();
	      }
	      vo.setUploadfile(file2);
	      vo.setPassword(passwordEncoder.encode(vo.getPassword()));
	      
		if(service.insert(vo)>0) {
			mv.addObject("message","회원가입을 축하드립니다.");
		}else {
			//Join 실패
			mv.addObject("message","회원가입에 실패하셨습니다 다시 시도 해주세요.");
			uri = "/user/joinForm";
		}

		mv.setViewName(uri);
		return mv;
	}
	
	//**로그인 양식
	@RequestMapping(value="/loginf")
	public ModelAndView loginf(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		mv.setViewName("/user/loginForm");
		return mv;
	}
	
	//** 로그인
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response,ModelAndView mv, UserVO vo) {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String uri = "/user/loginForm";
		
		vo.setId(id);
		vo = service.selectOne(vo);
		if ( vo != null ) { 
			
			if( passwordEncoder.matches(password, vo.getPassword())) {
				request.getSession().setAttribute("loginID", id);
				request.getSession().setAttribute("loginNick", vo.getNname());
				request.getSession().setAttribute("loginName", vo.getName());
				request.getSession().setAttribute("loginPW", password);
				
				
				uri="home" ;
			}else {
				mv.addObject("message", "비밀번호가 틀렸습니다.");
			}
		}else {	// ID 오류
			mv.addObject("message", "해당되는 아이디가 없습니다.");
			
		} //else
		mv.setViewName(uri);
		return mv;
	}
	//** 로그아웃
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		HttpSession session = request.getSession(false);
    	if (session!=null) session.invalidate();
    	mv.addObject("message", "로그아웃 되었습니다 ~~");
    	mv.setViewName("home");
		return mv;
	}
	
	//** 회원정보
	@RequestMapping(value="/info")
	public ModelAndView info(HttpServletRequest request, HttpServletResponse response,UserVO vo,ModelAndView mv) {
		
		
		HttpSession session = request.getSession(false);
		
		if (vo.getId() == null || vo.getId().length()<1) {
			if(session != null && session.getAttribute("loginID") != null) {
					vo.setId((String)session.getAttribute("loginID"));
			}else {
				request.setAttribute("message", "session이 없습니다.");
				mv.setViewName("home");
				return mv;
			}
		}
		
		String uri = "/user/info";
		vo = service.selectOne(vo);
		if(vo != null) {
			
			//** Updqte 요청이면 updateForm.jsp로 이동 (내정보수정)
			//=> PasswordEncoder 사용후에는 
			//   session에 보관해 놓은 raw_password 를 수정 할 수 있도록 vo에 set해줌 
			if("U".equals(request.getParameter("want"))) {
				uri = "/user/updateForm";
				vo.setPassword((String)session.getAttribute("loginPW"));
			}
			
			mv.addObject("user",vo);
		}else {
			//ID가 없음
			mv.addObject("message","~~ "+request.getParameter("id")+"님의 자료는 존재하지 않습니다 ~~");
		}
		mv.setViewName(uri);
		return mv;
	}
	
}
