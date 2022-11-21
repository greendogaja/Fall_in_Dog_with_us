package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dogcontrol.DogSearchCriteria;
import mapperInterface.DogMapper;
import vo.DogVO;

@Service
public class DogServiceImpl implements DogService{

	@Autowired
	DogMapper mapper;

//	게시판
	@Override
	public List<DogVO> dog_list_S(DogSearchCriteria cri) {
		return mapper.dog_list_S(cri);
	}

	@Override
	public List<DogVO> dog_list_M(DogSearchCriteria cri) {
		return mapper.dog_list_M(cri);
	}

	@Override
	public List<DogVO> dog_list_L(DogSearchCriteria cri) {
		return mapper.dog_list_L(cri);
	}

	public int dog_count_S(DogSearchCriteria cri) {
		return mapper.dog_count_S(cri);
	}
	
	public int dog_count_M(DogSearchCriteria cri) {
		return mapper.dog_count_M(cri);
	}
	
	public int dog_count_L(DogSearchCriteria cri) {
		return mapper.dog_count_L(cri);
	}
	
//	상세 페이지
	@Override
	public DogVO selectOne(DogVO vo) {
		return mapper.selectOne(vo);
	}

//	글쓰기
	@Override
	public int insert(DogVO vo) {
		return mapper.insert(vo);
	}
	
//	글수정
	@Override
	public int update(DogVO vo) {
		return mapper.insert(vo);
	}
	
//	글삭제
	@Override
	public int delete(DogVO vo) {
		return mapper.insert(vo);
	}
	
}
