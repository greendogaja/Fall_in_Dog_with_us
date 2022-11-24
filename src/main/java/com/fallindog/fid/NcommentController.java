package com.fallindog.fid;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.NcommentService;
import service.NoticeService;
import vo.NcommentVO;
import vo.NoticeVO;

@Controller
public class NcommentController {

	@Autowired
	NcommentService cservice;
	
	
	// 댓글입력
//	@SuppressWarnings("unused")
	@RequestMapping(value="/ncinsert")
	public ModelAndView ncinsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, NcommentVO cvo, 
			RedirectAttributes rttr) {
	
		int nno = Integer.parseInt(request.getParameter("nno"));
		cvo.setNno(nno); 
		String uri = "redirect:ndetail?nno="+nno;
		
		if(cservice.ncinsert(cvo)>0) {
			rttr.addFlashAttribute("message", "~~ 댓글 등록 성공 ~~");
			
//			List<NcommentVO> list = new ArrayList<NcommentVO>();
//	    	list = service.selectList();
//	    	mv.addObject("orange", list);
//	    	
//	    	System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~list"+list);
	    	
	    	
	    	
		}else {
			mv.addObject("message", "~~ 댓글 등록 실패, 다시 하세요 ~~");
		}
		
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"+cvo);
		mv.setViewName(uri);
		return mv;
		
	}
	
	// ** NcommentList
	@ResponseBody
	@RequestMapping(value="/selectList")
	public ModelAndView selectList(HttpServletRequest request, HttpServletResponse response,
									ModelAndView mv,  NcommentVO cvo) {
		
//		nno 값 전달 필요
		
//		vo.setNno(Integer.parseInt("nno"));
//		cvo.setNno(nno);
		
		int nno = Integer.parseInt((String)request.getParameter("nno"));
		cvo.setNno(nno);
		System.out.println("!!!!!!!!!!!!!!!!!!!! "+nno);
		
		
		List<NcommentVO> list = new ArrayList<NcommentVO>();
    	list = cservice.selectList(cvo);
    	if ( list!=null ) {
    		mv.addObject("orange", list); 
    		System.out.println("!!!!!!!!!!!!!!!!!!!! TTT");
    		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~list"+list);
    	}else {
    		mv.addObject("message", "~~ 출력 자료가 없습니다 ~~");
    		System.out.println("!!!!!!!!!!!!!!!!!!!! FFF");
    	}
    	
    	mv.setViewName("guide/noticeDetail");
    	return mv;
    	
	}	
	
	

	
	
	
	
}
