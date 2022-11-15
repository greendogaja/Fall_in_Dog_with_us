package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.NcommentMapper;
import vo.NcommentVO;

@Service
public class NcommentServiceImpl implements NcommentService{

	@Autowired
	NcommentMapper mapper;
	
	// 댓글입력
	@Override
	public int ncinsert(NcommentVO vo) {
		return mapper.ncinsert(vo);
	}

	// 모댓글인 경우 cno, grp 일치
	@Override
	public int nc_check(NcommentVO vo){
		return mapper.nc_check(vo);
	}

	// 모댓글이 삭제된 댓글일때 답글도 모두삭제되면 테이블에서 완전히 삭제
	@Override
	public int ncdelete_table(NcommentVO vo){
		return mapper.ncdelete_table(vo);
	}

	// 대댓글 입력
	@Override
	public int ncreply(NcommentVO vo){
		return mapper.ncreply(vo);
	}

	// ncomment 에 댓글수 증가
	@Override
	public int ncreply_up(NcommentVO vo){
		return mapper.ncreply_up(vo);
	}

	// 댓글리스트 가져오기
	@Override
	public List<NcommentVO> selectList(){
		return mapper.selectList();
	}

	// 댓글 추가/삭제시 댓글 갯수 가져오기
	@Override
	public int nc_count(NcommentVO vo){
		return mapper.nc_count(vo);
	}

	// 모댓글의 답글수를 카운트
	@Override
	public int nc_count_re(NcommentVO vo){
		return mapper.nc_count_re(vo);
	}

	// 대댓글 카운트
	@Override
	public int ncreply_count_rere(NcommentVO vo){
		return mapper.ncreply_count_rere(vo);
	}

	// 모댓글 삭제, 답글없음
	@Override
	public int ncdelete_no_re(NcommentVO vo){
		return mapper.ncdelete_no_re(vo);
	}

	// 모댓글 삭제, 답글있음
	@Override
	public int ncdelete_re(NcommentVO vo){
		return mapper.ncdelete_re(vo);
	}

	// ncomment 에 댓글수 감소
	@Override
	public int ncomment_down(NcommentVO vo){
		return mapper.ncomment_down(vo);
	}
}
