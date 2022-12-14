package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adoptcontrol.AdoptSearchCriteria;
import mapperInterface.AdoptMapper;
import vo.AdoptVO;

@Service
public class AdoptServiceImpl implements AdoptService{

	@Autowired
	AdoptMapper mapper;
	
//	게시글ss
	@Override
	public AdoptVO selectOne(AdoptVO vo) {
		return mapper.selectOne(vo);
	}
	
//	글쓰기
	@Override
	public int insert(AdoptVO vo) {
		return mapper.insert(vo);
	}
	
//	글수정
	@Override
	public int update(AdoptVO vo) {
		return mapper.update(vo);
	}
	
//	글삭제
	@Override
	public int delete(AdoptVO vo) {
		return mapper.delete(vo);
	}	
	
//	조회수
	@Override
	public int countUp(AdoptVO vo) {
		return mapper.countUp(vo);
	}
	
//	게시판
	@Override
	public List<AdoptVO> searchList(AdoptSearchCriteria cri) {
		return mapper.searchList(cri);
	}
	public int searchCount(AdoptSearchCriteria cri) {
		return mapper.searchCount(cri);
	}
	
	
}

















