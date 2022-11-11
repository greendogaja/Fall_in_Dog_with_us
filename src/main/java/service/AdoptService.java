package service;

import java.util.List;

import vo.AdoptVO;

public interface AdoptService {

//	동물 목록
	List<AdoptVO> selectList_S();
	List<AdoptVO> selectList_M();
	List<AdoptVO> selectList_L();
	
//	상세 페이지
	AdoptVO selectOne(AdoptVO vo);

//	글쓰기
	int insert(AdoptVO vo);
	
}