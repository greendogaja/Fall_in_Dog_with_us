package service;

import java.util.List;

import dogcontrol.DogSearchCriteria;
import vo.DogVO;

public interface DogService {
	
//	게시판
	List<DogVO> dogCheck_S();
	List<DogVO> dogCheck_M();
	List<DogVO> dogCheck_L();
	
	List<DogVO> checkList(DogSearchCriteria cri);
	
	List<DogVO> checkList(DogVO vo);
	
	List<DogVO> dog_list_S();
	List<DogVO> dog_list_M();
	List<DogVO> dog_list_L();
	
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
	
	// 보호중인 강아지 수
	int protectCount();
	// 입양중인 강아지 수
	int adoptCount();
	
}