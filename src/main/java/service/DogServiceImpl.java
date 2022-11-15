package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.DogMapper;
import vo.DogVO;

@Service
public class DogServiceImpl implements DogService{

	@Autowired
	DogMapper mapper;
	
//	동물 목록
	@Override
	public List<DogVO> selectList_S(){
		return mapper.selectList_S();
	}
	@Override
	public List<DogVO> selectList_M(){
		return mapper.selectList_M();
	}
	@Override
	public List<DogVO> selectList_L(){
		return mapper.selectList_L();
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
