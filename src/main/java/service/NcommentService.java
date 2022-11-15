package service;

import java.util.List;

import vo.NcommentVO;

public interface NcommentService {
	
	// 댓글입력
	int ncinsert(NcommentVO vo);
	
	//모댓글인 경우 cno, grp 일치
	int nc_check(NcommentVO vo);
	
	// 모댓글이 삭제된 댓글일때 답글도 모두삭제되면 테이블에서 완전히 삭제
	int ncdelete_table(NcommentVO vo);
	
	//대댓글 입력
	int ncreply(NcommentVO vo);
	
	// ncomment 에 댓글수 증가
	int ncreply_up(NcommentVO vo);
	
	//댓글리스트 가져오기
	List<NcommentVO> selectList();
	
	//댓글 추가/삭제시 댓글 갯수 가져오기
	int nc_count(NcommentVO vo);
	
	// 모댓글의 답글수를 카운트
	int nc_count_re(NcommentVO vo);
	
	//대댓글 카운트
	int ncreply_count_rere(NcommentVO vo);
	
	// 모댓글 삭제, 답글없음
	int ncdelete_no_re(NcommentVO vo);
	
	//모댓글 삭제, 답글있음
	int ncdelete_re(NcommentVO vo);
	
	//  ncomment 에 댓글수 감소
	int ncomment_down(NcommentVO vo);
	
}
