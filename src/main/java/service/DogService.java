package service;

import java.util.List;

import dogcontrol.DogSearchCriteria;
import vo.DogVO;

public interface DogService {
	
//	게시판
	List<DogVO> dog_list_S(DogSearchCriteria cri);
	List<DogVO> dog_list_M(DogSearchCriteria cri);
	List<DogVO> dog_list_L(DogSearchCriteria cri);
	int dog_count_S(DogSearchCriteria cri);
	int dog_count_M(DogSearchCriteria cri);
	int dog_count_L(DogSearchCriteria cri);

	
//	상세 페이지
	DogVO selectOne(DogVO vo);

//	글쓰기
	int insert(DogVO vo);
	
//	글수정
	int update(DogVO vo);
	
//	글삭제
	int delete(DogVO vo);
	
}