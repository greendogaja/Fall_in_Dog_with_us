package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.AdoptMapper;
import vo.AdoptVO;

@Service
public class AdoptServiceImpl implements AdoptService{

	@Autowired
	AdoptMapper mapper;
	
//	동물 목록
	@Override
	public List<AdoptVO> selectList_S(){
		return mapper.selectList_S();
	}
	@Override
	public List<AdoptVO> selectList_M(){
		return mapper.selectList_M();
	}
	@Override
	public List<AdoptVO> selectList_L(){
		return mapper.selectList_L();
	}
	
//	상세 페이지
	@Override
	public AdoptVO selectOne(AdoptVO vo) {
		return mapper.selectOne(vo);
	}

//	글쓰기
	@Override
	public int insert(AdoptVO vo) {
		return mapper.insert(vo);
	}
	
}
