package com.fallindog.fid;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import adoptcontrol.AdoptPageMaker;
import adoptcontrol.AdoptSearchCriteria;
import dogcontrol.DogPageMaker;
import dogcontrol.DogSearchCriteria;
import service.AdoptReplyService;
import service.AdoptService;
import service.DogService;
import vo.AdoptReplyVO;
import vo.AdoptVO;
import vo.DogVO;

@Controller
public class AdoptController {

	@Autowired
	DogService Dservice;

	@Autowired
	AdoptService Aservice;

	@Autowired
	AdoptReplyService Rservice;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	입양 위탁 안내
	@RequestMapping(value = "/adopt_guide")
	public ModelAndView adopt_guide(ModelAndView mv) {

		mv.setViewName("adopt_dog/adopt_guide");
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	입양 위탁 절차
	@RequestMapping(value = "/adopt_procedure")
	public ModelAndView adopt_procedure(ModelAndView mv) {

		mv.setViewName("/adopt_dog/adopt_procedure");
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	입양 신청 게시판
	@RequestMapping(value = "/adopt_board")
	public ModelAndView adopt_board(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			AdoptSearchCriteria cri, AdoptPageMaker pageMaker) {

		cri.setSnoEno();

		mv.addObject("Adopt_list", Aservice.searchList(cri));

		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(Aservice.searchCount(cri));
		mv.addObject("AdoptPageMaker", pageMaker);

		mv.setViewName("/adopt_dog/adopt_board");
		return mv;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	입양 신청 상세
	@RequestMapping(value = "/adopt_detail")
	public ModelAndView adopt_detail(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			AdoptVO vo, AdoptReplyVO rvo) {

		String uri = "adopt_dog/adopt_detail";
		int ano = Integer.parseInt((String) request.getParameter("ano"));
		vo.setAno(ano);
		vo = Aservice.selectOne(vo);

		if (vo != null) {
//			조회수 증가
			String loginID = (String) request.getSession().getAttribute("loginID");
			if (!vo.getId().equals(loginID) && !"U".equals(request.getParameter("jCode"))) {
				if (Aservice.countUp(vo) > 0)
					vo.setCnt(vo.getCnt() + 1);

			}
//			수정 시 이동경로
			if ("U".equals(request.getParameter("jCode"))) {
				uri = "adopt_dog/adopt_update_form";

			}
			mv.addObject("Adopt_detail", vo);

/////////////////////////////////////////////////////

			rvo.setAno(ano);
			System.out.println("ano => " + ano);

			List<AdoptReplyVO> list = new ArrayList<AdoptReplyVO>();
			list = Rservice.getReplyList(rvo);

			if (list != null) {
				mv.addObject("orange", list);
				System.out.println("댓글리스트 불러오기 성공! TTT");
				System.out.println("~~~댓글list" + list);
			} else {
				mv.addObject("message", "~~ 출력 자료가 없습니다 ~~");
				System.out.println("댓글리스트 불러오기 실패 FFF");
			}

			mv.addObject("Adopt_Reply", list);

		} else {
			mv.addObject("message", "__Adopt_detail is Not Found__");

		}

		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	글쓰기
	@RequestMapping(value = "/adopt_insert_form")
	public ModelAndView adopt_insert_form(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {

		mv.setViewName("adopt_dog/adopt_insert_form");
		return mv;

	}

	@RequestMapping(value = "/adopt_insert", method = RequestMethod.POST)
	public ModelAndView adopt_insert(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			AdoptVO vo, RedirectAttributes rttr) throws IOException {

		String uri = "redirect:adopt_board";

		if (Aservice.insert(vo) > 0) {
			rttr.addFlashAttribute("message", "__Insert Success__");

		} else {
			mv.addObject("message", "__Insert Fail__");
			uri = "adopt_dog/adopt_insert_form";

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	

//	글수정
	@RequestMapping(value = "/adopt_update", method = RequestMethod.POST)
	public ModelAndView adopt_update(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			AdoptVO vo) {

		String uri = "adopt_dog/adopt_detail";
		mv.addObject("Adopt_detail", vo);

		if (Aservice.update(vo) > 0) {
			mv.addObject("message", "__Update Success__");

		} else {
			mv.addObject("message", "__Update Fail__");
			uri = "adopt_dog/adopt_update_form";

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	글삭제
	@RequestMapping(value = "/adopt_delete")
	public ModelAndView adopt_delete(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			AdoptVO vo, RedirectAttributes rttr) {

		String uri = "redirect:adopt_board";

		if (Aservice.delete(vo) > 0) {
			rttr.addFlashAttribute("message", "__Delete Success__");

		} else {
			rttr.addFlashAttribute("message", "__Delete Fail__");
			uri = "redirect:adopt_detail?ano=" + vo.getAno();

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	댓글 등록
	@RequestMapping(value = "/saveReply")
	public ModelAndView saveReply(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			AdoptReplyVO vo, RedirectAttributes rttr) {

		int ano = Integer.parseInt(request.getParameter("ano"));
		vo.setAno(ano);

		System.out.println(vo.getGrp());
		String uri = "redirect:adopt_detail?ano=" + ano;

		if (Rservice.saveReply(vo) > 0) {
			rttr.addFlashAttribute("message", "~~ 댓글 등록 성공 ~~");

		} else {
			mv.addObject("message", "~~ 댓글 등록 실패, 다시 하세요 ~~");

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	댓글 삭제
//	@RequestMapping(value="/ncdelete")
//	public ModelAndView ncdelete(HttpServletRequest request, HttpServletResponse response, 
//									ModelAndView mv, NoticeReplyVO cvo, RedirectAttributes rttr) {
//
//		String uri = "redirect:ndetail?nno="+cvo.getNno();
//		
//		// 2. Service 처리
//		if ( cservice.ncdelete(cvo) > 0 ) {
//			rttr.addFlashAttribute("message", "~~ 댓글삭제 성공 ~~"); 
//		}else {
//			rttr.addFlashAttribute("message", "~~ 댓글삭제 실패, 다시 하세요 ~~");
////			uri = "redirect:ndetail?nno="+cvo.getNno();
//		} // Service
//		
////		cservice.ncdelete_grp(cvo);
//		
//		// 3. 결과(ModelAndView) 전달 
//		mv.setViewName(uri);
//		return mv;
//	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	보호/입양중 목록
	@RequestMapping(value = "/dog_list_S")
	public ModelAndView dog_list_S(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			DogSearchCriteria cri, DogPageMaker pageMaker, DogVO vo) {

		cri.setSnoEno();
		
		mv.addObject("check", vo.getCheck());

		
		if(vo.getCheck()!= null && vo.getCheck().length > 0) {
			//	=> 조건별 검색
			mv.addObject("Adopt_list", Dservice.checkList(cri));
			
		}else {
			mv.addObject("Adopt_list", Dservice.dog_list_S(cri));
			
		}
		
		mv.addObject("dogCheck", Dservice.dogCheck_S());
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(Dservice.dog_count_S(cri));
		mv.addObject("AdoptPageMaker", pageMaker);

		mv.setViewName("/adopt_dog/dog_list_S");
		return mv;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	보호/입양중 목록
	@RequestMapping(value = "/dog_list_M")
	public ModelAndView dog_list_M(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			DogSearchCriteria cri, DogPageMaker pageMaker, DogVO vo) {

		cri.setSnoEno();
		
		mv.addObject("check", vo.getCheck());

		
		if(vo.getCheck()!= null && vo.getCheck().length > 0) {
			//	=> 조건별 검색
			mv.addObject("Adopt_list", Dservice.checkList(cri));
			
		}else {
			mv.addObject("Adopt_list", Dservice.dog_list_M(cri));
			
		}
		
		mv.addObject("dogCheck", Dservice.dogCheck_M());
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(Dservice.dog_count_M(cri));
		mv.addObject("AdoptPageMaker", pageMaker);

		mv.setViewName("/adopt_dog/dog_list_M");
		return mv;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	보호/입양중 목록
	@RequestMapping(value = "/dog_list_L")
	public ModelAndView dog_list_L(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			DogSearchCriteria cri, DogPageMaker pageMaker, DogVO vo) {

		cri.setSnoEno();
		
		mv.addObject("check", vo.getCheck());

		
		if(vo.getCheck()!= null && vo.getCheck().length > 0) {
			//	=> 조건별 검색
			mv.addObject("Adopt_list", Dservice.checkList(cri));
			
		}else {
			mv.addObject("Adopt_list", Dservice.dog_list_L(cri));
			
		}
		
		mv.addObject("dogCheck", Dservice.dogCheck_L());
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(Dservice.dog_count_L(cri));
		mv.addObject("AdoptPageMaker", pageMaker);

		mv.setViewName("/adopt_dog/dog_list_L");
		return mv;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	상세 페이지
	@RequestMapping(value = "/dog_detail")
	public ModelAndView dog_detail(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			DogVO vo) {

		String uri = "/adopt_dog/dog_detail";
		vo = Dservice.selectOne(vo);

		if (vo != null) {
//			수정 시 이동경로
			if ("U".equals(request.getParameter("jCode"))) {
				uri = "/adopt_dog/dog_update_form";

			}
			mv.addObject("Adopt_detail", vo);

		} else {
			mv.addObject("message", "__Adopt_detail is Not Found__");

		}

		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	글쓰기
	@RequestMapping(value = "/dog_insert_form")
	public ModelAndView dog_insert_form(HttpServletRequest request, HttpServletResponse response, ModelAndView mv) {

		mv.setViewName("/adopt_dog/dog_insert_form");
		return mv;

	}

	@RequestMapping(value = "/dog_insert", method = RequestMethod.POST)
	public ModelAndView dog_insert(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, DogVO vo,
			RedirectAttributes rttr) throws IllegalStateException, IOException {

		String uri = "redirect:dog_list_S";

		String realPath = request.getRealPath("/");

		if (realPath.contains(".eclipse.")) {
			realPath = "C:/MTest/project/Fall_in_Dog/src/main/webapp/resources/img/dogs/";

		} else {
			realPath += "resources/img/dogs/";

		}
		File f1 = new File(realPath);

		if (!f1.exists()) {
			f1.mkdir();

		}
		String file1, file2 = "resources/img/dogs/default.png";
		MultipartFile uploadfilef = vo.getUploadfilef();

		if (uploadfilef != null && !uploadfilef.isEmpty()) {

			file1 = realPath + uploadfilef.getOriginalFilename();
			uploadfilef.transferTo(new File(file1));

			file2 = "resources/img/dogs/" + uploadfilef.getOriginalFilename();

		}
		vo.setImg(file2);

		if (Dservice.insert(vo) > 0) {
			rttr.addFlashAttribute("message", "__Insert Success__");

		} else {
			mv.addObject("message", "__Insert Fail__");
			uri = "/adopt_dog/dog_insert_form";

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	글수정
	@RequestMapping(value = "/dog_update", method = RequestMethod.POST)
	public ModelAndView dog_update(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, DogVO vo)
			throws IOException {

		String uri = "adopt_dog/dog_detail";

		String realPath = request.getRealPath("/");

		if (realPath.contains(".eclipse.")) {
			realPath = "C:/MTest/project/Fall_in_Dog/src/main/webapp/resources/img/dogs/";

		} else {
			realPath += "resources/img/dogs/";

		}
		File f1 = new File(realPath);

		if (!f1.exists()) {
			f1.mkdir();

		}
		String file1, file2 = "resources/img/dogs/default.png";
		MultipartFile uploadfilef = vo.getUploadfilef();

		if (uploadfilef != null && !uploadfilef.isEmpty()) {

			file1 = realPath + uploadfilef.getOriginalFilename();
			uploadfilef.transferTo(new File(file1));

			file2 = "resources/img/dogs/" + uploadfilef.getOriginalFilename();

		}
		vo.setImg(file2);

		mv.addObject("Adopt_detail", vo);

		if (Dservice.update(vo) > 0) {
			mv.addObject("message", "__Update Success__");

		} else {
			mv.addObject("message", "__Update Fail__");
			uri = "adopt_dog/dog_update_form";

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//	글삭제
	@RequestMapping(value = "/dog_delete")
	public ModelAndView dog_delete(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, DogVO vo,
			RedirectAttributes rttr) {

		String uri = "redirect:dog_list_S";

		if (Dservice.delete(vo) > 0) {
			rttr.addFlashAttribute("message", "__Delete Success__");

		} else {
			rttr.addFlashAttribute("message", "__Delete Fail__");
			uri = "redirect:dog_detail?dno=" + vo.getDno();

		}
		mv.setViewName(uri);
		return mv;

	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

} // AdoptController