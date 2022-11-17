package com.fallindog.fid;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.NcommentService;
import vo.NcommentVO;

@Controller
public class NcommentController {

	@Autowired
	NcommentService service;
	
	@RequestMapping(value="/ncinsert", method=RequestMethod.POST)
	public ModelAndView ncinsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, NcommentVO vo, 
			RedirectAttributes rttr) throws IOException  {
	
		String uri = "redirect:noticeDetail";
		
		int nno = Integer.parseInt(request.getParameter("nno"));
		String content = request.getParameter("content");
		String nname = request.getParameter("nname");
		
				
				//request.getSession().setAttribute("nname", vo.getNname());
		
		
		
		vo.setNno(nno);
		
		
		
		
		
		if(service.ncinsert(vo)>0) {
			rttr.addFlashAttribute("message", "~~ 댓글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 댓글 등록 실패, 다시 하세요 ~~");
		}
		
		mv.setViewName(uri);
		return mv;
		
	}
	
	
	
	
	
	
	
}
