package service;

import java.util.List;

import vo.DogVO;

public interface DogService {

//	동물 목록
	List<DogVO> selectList_S();
	List<DogVO> selectList_M();
	List<DogVO> selectList_L();
	
//	상세 페이지
	DogVO selectOne(DogVO vo);

//	글쓰기
	int insert(DogVO vo);
	
}