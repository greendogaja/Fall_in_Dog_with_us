package service;

import java.util.List;

import adoptcontrol.AdoptSearchCriteria;
import vo.AdoptVO;

public interface AdoptService {

//	게시글
	AdoptVO selectOne(AdoptVO vo);

//	글쓰기
	int insert(AdoptVO vo);
	
//	글수정
	int update(AdoptVO vo);
	
//	글삭제
	int delete(AdoptVO vo);
	
//	조회수
	int countUp(AdoptVO vo);
	
//	게시판
	List<AdoptVO> searchList(AdoptSearchCriteria cri);
	int searchCount(AdoptSearchCriteria cri);
	
}