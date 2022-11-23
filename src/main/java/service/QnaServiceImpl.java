package service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.QnaMapper;
import usercontrol.SearchCriteria;
import vo.QnaVO;



@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	QnaMapper mapper;
	
	//** selectOne
	@Override 
	public QnaVO selectOne(QnaVO vo) { return mapper.selectOne(vo); 
	}

	//** Insert
	@Override
	public int insert(QnaVO vo) {
		return mapper.insert(vo);
	}
	//** Update
	@Override
	public int update(QnaVO vo) {
		return mapper.update(vo);
	}
	
	//** Delete
	@Override
	public int delete(QnaVO vo) {
		return mapper.delete(vo);
	}
	
	@Override
	public List<QnaVO> searchList(SearchCriteria cri){
		return mapper.searchList(cri);
	}
	@Override
	public int searchCount(SearchCriteria cri){
		return mapper.searchCount(cri);
	}
	
}//class
