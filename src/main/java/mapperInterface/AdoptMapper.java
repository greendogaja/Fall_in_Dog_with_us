package mapperInterface;

import java.util.List;

import vo.AdoptVO;

public interface AdoptMapper {
	
//	게시판
	List<AdoptVO> selectList();
	
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
	
}
