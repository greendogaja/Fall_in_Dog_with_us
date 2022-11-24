package com.fallindog.fid;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.QnaReplyService;
import service.QnaService;
import usercontrol.PageMaker;
import usercontrol.SearchCriteria;
import vo.QnaReplyVO;
import vo.QnaVO;



@Controller
public class QnaController {
	@Autowired
	QnaService service;
	@Autowired
	QnaReplyService reservice;
	
	//Q&A Home
	@RequestMapping(value="/qna")
	public ModelAndView qna(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,
			SearchCriteria cri,PageMaker pageMaker) {
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
		cri.setRowsPerPage(10);
	    mv.addObject("qnalist", service.searchList(cri));  //ver2
	    pageMaker.setCri(cri);
	    pageMaker.setTotalRowsCount(service.searchCount(cri));   //ver2 : 조건과 일치하는 Rows 갯수 
	      
	    mv.addObject("pageMaker", pageMaker);
		mv.setViewName("/customer/qnaHome");
		return mv;
	}//QnAhome
	
	// ** Insert : 새글등록
	@RequestMapping(value="/qnainsertf")
	public ModelAndView qnainsertsertf(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		mv.setViewName("/customer/qnaInsertf");
		return mv;
	}
	@RequestMapping(value="/qnainsert", method=RequestMethod.POST)
	public ModelAndView qnainsert(HttpServletRequest request, 
			HttpServletResponse response, ModelAndView mv, QnaVO vo, RedirectAttributes rttr) throws IOException {
	
		String uri = "redirect:qna";
		 String realPath = request.getRealPath("/"); 
	      if ( realPath.contains(".eclipse.") )  
	         realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\qna\\";
	      else
	         realPath += "resources\\img\\uploadImage\\qna\\" ;
	      
	      File f1 = new File(realPath);
	      if ( !f1.exists() ) f1.mkdir();
	      String file1, file2; 
	      
	      MultipartFile uploadfilef = vo.getUploadfilef(); 
	      if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
	         file1 = realPath + uploadfilef.getOriginalFilename();  
	         uploadfilef.transferTo(new File(file1)); 
	         
	         file2="resources/img/uploadImage/qna/"+uploadfilef.getOriginalFilename();
	         vo.setUploadfile(file2);
	      }
		
		
		if ( service.insert(vo)>0 ) {
			rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~");
			uri = "/customer/qnaInsertf";
		}
		mv.setViewName(uri);
		return mv;
	} //QnAinsert
	
	
	@RequestMapping(value="/qnadetail")
	public ModelAndView qnadetail(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, QnaVO vo, QnaReplyVO qvo) {
		String uri = "/customer/qnaDetail";
		vo = service.selectOne(vo);
		qvo.setReqno(vo.getQno());
		qvo =reservice.readReply(qvo);
		if ( vo != null ) {
			if ( "U".equals(request.getParameter("want")))
				uri = "/customer/qnaUpdatef";
		mv.addObject("replylist",qvo);
		mv.addObject("qnaone", vo);
		} //faqdetail_if
		mv.setViewName(uri);
		return mv;
	}//QnAdetail

	
	@RequestMapping(value="/download")
	public ModelAndView download(HttpServletRequest request, ModelAndView mv,
								@RequestParam("dnfile")	String dnfile) {
		
		String realPath = request.getRealPath("/"); 
		String fileName = dnfile.substring(dnfile.lastIndexOf("/")+1); 
		if ( realPath.contains(".eclipse.") )  
			realPath = "C:\\\\MTest\\\\project\\\\Fall_in_Dog\\\\src\\\\main\\\\webapp\\\\resources\\\\img\\\\uploadImage\\\\qna\\\\" 
						+ fileName;
		else  
			realPath += "resources\\uploadImage\\qna\\" + fileName ;
		File file = new File(realPath);
		mv.addObject("downloadFile", file);
		mv.setViewName("downloadView");
    	return mv;
	} //download
	
	@RequestMapping(value="/qnaupdate", method=RequestMethod.POST)
	public ModelAndView qnaupdate(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, QnaVO vo) throws IOException {
		String uri = "redirect:qnadetail?qno="+vo.getQno();
		 String realPath = request.getRealPath("/"); 
	      if ( realPath.contains(".eclipse.") )  
	         realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\qna\\";
	      else
	         realPath += "resources\\img\\uploadImage\\qna\\" ;
	      
	      File f1 = new File(realPath);
	      if ( !f1.exists() ) f1.mkdir();
	      String file1, file2; 
	      
	      MultipartFile uploadfilef = vo.getUploadfilef(); 
	      if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         
	         file1 = realPath + uploadfilef.getOriginalFilename();  
	         uploadfilef.transferTo(new File(file1)); 
	         
	         file2="resources/img/uploadImage/qna/"+uploadfilef.getOriginalFilename();
	         vo.setUploadfile(file2);
	      }
		mv.addObject("qnaone",vo);
		if ( service.update(vo) > 0 ) {
			mv.addObject("message", "~~ 글수정 성공 ~~"); 
		}else {
			uri = "/customer/qnaUpdatef";
		}
		
		mv.setViewName(uri);
		return mv;
	}//QnAupdate
	
	
	
	
	@RequestMapping(value="/qnadelete")
	public ModelAndView qnadelete(HttpServletRequest request, HttpServletResponse response, 
									ModelAndView mv, QnaVO vo, RedirectAttributes rttr) {
		String uri = "redirect:qna";
		
		// 2. Service 처리
		if ( service.delete(vo) > 0 ) {
			rttr.addFlashAttribute("message", "~~ 글삭제 성공 ~~"); 
		}else {
			rttr.addFlashAttribute("message", "~~ 글삭제 실패, 다시 하세요 ~~");
			uri = "redirect:qnadetail?qno="+vo.getQno();
		} // Service
		
		mv.setViewName(uri);
		return mv;
	} //QnAdelete
	
	
	@RequestMapping(value="/writereply",method=RequestMethod.POST)
	public ModelAndView writereply(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,RedirectAttributes rttr, QnaVO vo, QnaReplyVO qvo) throws Exception{
		String uri = "redirect:qnadetail?qno="+vo.getQno();
		String secret = request.getParameter("secret");
		if( secret == null || secret.length()<1 ) vo.setSecret(null); 
		else vo.setSecret(secret);
		
		//vo=service.selectOne(vo);
		qvo.setReqno(vo.getQno());
		
		
		
		
		

		String realPath = request.getRealPath("/"); 
	     if ( realPath.contains(".eclipse.") )  
	         realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\qna\\";
	     else
	         realPath += "resources\\img\\uploadImage\\qna\\" ;
	      
	     File f1 = new File(realPath);
	     if ( !f1.exists() ) f1.mkdir();
	     String file1, file2; 
	      
	     MultipartFile uploadfilef = qvo.getUploadfilef(); 
	     if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
	         file1 = realPath + uploadfilef.getOriginalFilename();  
	         uploadfilef.transferTo(new File(file1)); 
	         
	         file2="resources/img/uploadImage/qna/"+uploadfilef.getOriginalFilename();
	         qvo.setUploadfile(file2);
	     }
		
		if ( reservice.insert(qvo) >0 ) {
			rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
			//현재대기를 완료로 수정 
			vo.setSituation(String.valueOf(2));
			System.out.println("######################3"+vo);
			
			if(service.situp(vo)>0) {
				System.out.println("업데이트 성공 !!!");
			}else {
				System.out.println("실패 !!!");
			}
			
		}else {
			mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~");
			uri = "/customer/qna";
		}
		mv.setViewName(uri);
		return mv;
	}//Replyinsert

	@RequestMapping(value="/updatereply",method=RequestMethod.POST)
	public ModelAndView updatereply(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,RedirectAttributes rttr, QnaVO vo, QnaReplyVO qvo) throws Exception{
		String uri = "redirect:qnadetail?qno="+vo.getQno();
		qvo.setReqno(vo.getQno());
		
		String realPath = request.getRealPath("/"); 
		if ( realPath.contains(".eclipse.") )  
			realPath = "C:\\MTest\\project\\Fall_in_Dog\\src\\main\\webapp\\resources\\img\\uploadImage\\qna\\";
		else
			realPath += "resources\\img\\uploadImage\\qna\\" ;
		
		File f1 = new File(realPath);
		if ( !f1.exists() ) f1.mkdir();
		String file1, file2; 
		
		MultipartFile uploadfilef = qvo.getUploadfilef(); 
		if ( uploadfilef !=null && !uploadfilef.isEmpty() ) {
			file1 = realPath + uploadfilef.getOriginalFilename();  
			uploadfilef.transferTo(new File(file1)); 
			
			file2="resources/img/uploadImage/qna/"+uploadfilef.getOriginalFilename();
			qvo.setUploadfile(file2);
		}
		
		if ( reservice.update(qvo) >0 ) {
			rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
		}else {
			mv.addObject("message", "~~ 새글 등록 실패, 다시 하세요 ~~");
			uri = "/customer/qna";
		}
		mv.setViewName(uri);
		return mv;
	}//Replyinsert
	
	
}
