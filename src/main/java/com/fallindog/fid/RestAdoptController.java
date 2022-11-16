package com.fallindog.fid;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import service.AdoptReplyService;
import vo.AdoptReplyVO;


@RestController

@RequestMapping(value = "/adopt_board")

public class RestAdoptController {

	private static final Logger logger = LoggerFactory.getLogger(AdoptController.class);

	@Inject

	private AdoptReplyService Rservice;
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@RequestMapping(value = "/adopt_detail", method=RequestMethod.POST)
	public ModelAndView getReplyList(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {
		
		List<AdoptReplyVO> list = new ArrayList<AdoptReplyVO>();
	  	list = Rservice.getReplyList();
	  	
	  	mv.addObject("Adopt_Reply", list);
	  	mv.setViewName("/adopt_dog/adopt_detail");
	  	return mv;

	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping(value = "/saveReqly", method = RequestMethod.POST)
	public Map<String, Object> saveReply(@RequestBody AdoptReplyVO replyVO) {

		Map<String, Object> result = new HashMap<>();

		Rservice.saveReply(replyVO);
		result.put("status", "OK");

		return result;

	}


}