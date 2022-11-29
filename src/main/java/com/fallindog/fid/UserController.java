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
	@RequestMapping(value="/nickCheck")
	public ModelAndView nickCheck(HttpServletRequest request, HttpServletResponse response,
			ModelAndView mv,UserVO vo) {
		mv.addObject("newNick", vo.getNname());
		vo=service.selectnickOne(vo);
		if ( vo != null ) {
			mv.addObject("useNick","F"); 
		}else {
			mv.addObject("useNick", "T");
		}
		mv.setViewName("user/nickCheck");
		return mv;
	}
	
	//** 회원가입
	@RequestMapping(value="/join",method = RequestMethod.POST)
	public ModelAndView join(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,UserVO vo) throws IOException {
		  String url = "redirect:home";
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
			mv.addObject("msg","회원가입을 축하드립니다.");
		}else {
			//Join 실패
			mv.addObject("msg","회원가입에 실패하셨습니다 다시 시도 해주세요.");
			url = "/user/joinForm";
		}

		mv.setViewName(url);
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
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response,ModelAndView mv, UserVO vo
										) {
		
		String idsave = request.getParameter("idsave");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String url = "/user/loginForm";
		response.setCharacterEncoding("UTF-8");
		Cookie cookie = new Cookie ("useId",id);
		vo.setId(id);
		vo = service.selectOne(vo);
		if ( vo != null ) { 
			
			if( passwordEncoder.matches(password, vo.getPassword())) {
				request.getSession().setAttribute("loginID", id);
				request.getSession().setAttribute("loginNick", vo.getNname());
				request.getSession().setAttribute("loginName", vo.getName());
				request.getSession().setAttribute("loginPW", password);
				request.getSession().setAttribute("loginImg", vo.getUploadfile());
				
				Cookie cook = new Cookie("userId",vo.getId());
				if (idsave != null && idsave.equals("cook")) {
					response.addCookie(cook);
				}else {
					cook.setMaxAge(0);
					response.addCookie(cook);
				}
				url="redirect:home" ;
			}else {
				mv.addObject("msg", "비밀번호가 틀렸습니다.");
			}
		}else {	// ID 오류
			mv.addObject("msg", "해당되는 아이디가 없습니다.");
			
		} //else
		mv.setViewName(url);
		return mv;
	}
	//** 로그아웃
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response,ModelAndView mv) {
		HttpSession session = request.getSession(false);
    	if (session!=null) session.invalidate();
    	mv.addObject("msg", "로그아웃 되었습니다 ~~");
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
				request.setAttribute("msg", "session이 없습니다.");
				mv.setViewName("home");
				return mv;
			}
		}
		
		String url = "/user/info";
		vo = service.selectOne(vo);
		if(vo != null) {
			
			if("U".equals(request.getParameter("want"))) {
				url = "/user/updateForm";
				vo.setPassword((String)session.getAttribute("loginPW"));
				
			}
			mv.addObject("user",vo);
		}else {
			mv.addObject("msg","~~ "+request.getParameter("id")+"님의 자료는 존재하지 않습니다 ~~");
		}
		mv.setViewName(url);
		return mv;
	}
	
	
	// ** 회원정보변경
	@RequestMapping(value="/infoupdate", method = RequestMethod.POST)
	public ModelAndView infoupdate(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,UserVO vo) throws IOException {
	    
	  	String url = "/user/info";
	  	mv.addObject("user", vo);
		 String realPath = request.getRealPath("/"); 
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
	         vo.setUploadfile(file2);
	      }
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));
	     
		if(service.update(vo)>0) {
			mv.addObject("message"," 내정보수정 성공 ");
		  	mv.addObject("user", vo);
		}else{
			mv.addObject("msg", " 내정보수정 실패 ");
			url = "/user/updateForm";
		}
		mv.setViewName(url);
		return mv;
	}
	
	//**회워탈퇴
	@RequestMapping(value="/userdelete")
	public ModelAndView userdelete(HttpServletRequest request, HttpServletResponse response,
						ModelAndView mv,UserVO vo, RedirectAttributes rttr) {
		String url = null;
		String id = null;
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("loginID") != null) {
			id =(String)session.getAttribute("loginID");
			if(!"admin".equals(id)) vo.setId(id);
			
			if(service.delete(vo)>0) {
				rttr.addFlashAttribute("message","ㅇㅅㅇ 회원탈퇴 성공 ");
				
				if(!"admin".equals(id)) {
					session.invalidate();
					System.out.println("회원이 삭제");
				}
			}else{
				rttr.addFlashAttribute("message", "ㅇㅅㅇ 회원탈퇴 실패 ");
			}
		}else {
			rttr.addFlashAttribute("message", "삭제할 ID가 없습니다.");
		}
		if("admin".equals(id)) mv.setViewName("redirect:usearchlist");
		else mv.setViewName("redirect:home");
		return mv;
	}
	


	
	//**회원검색
	@RequestMapping(value="/usearchlist")
	public ModelAndView usearchlist(HttpServletRequest request,ModelAndView mv, SearchCriteria cri, PageMaker pageMaker) {
		
		cri.setSnoEno();
		cri.setRowsPerPage(5);
		cri.setRowsPerPage(10);
		String namekey  = request.getParameter("namekey");
		String phonekey = request.getParameter("phonekey");
		String idkey = request.getParameter("idkey");
		 if( namekey == null || namekey.length()<1 ) cri.setNamekey(null); 
		 else cri.setNamekey(namekey);
		 if( phonekey == null || phonekey.length()<1 ) cri.setPhonekey(null); 
		 else cri.setPhonekey(phonekey);
		 if(  idkey == null || idkey.length()<1 ) cri.setIdkey(null); 
		 else cri.setIdkey(idkey);
		 
		
		if ( cri.getCheck() !=null && cri.getCheck().length < 1 ) {
			cri.setCheck(null);
		}
		mv.addObject("userlist", service.searchList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri));   
		
    	mv.addObject("pageMaker", pageMaker);
		
		mv.setViewName("user/userControl");
    	return mv;
	} //bchecklist
	} //usearchLlist

