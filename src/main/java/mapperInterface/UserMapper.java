package mapperInterface;





import java.util.List;

import usercontrol.SearchCriteria;
import vo.UserVO;


public interface UserMapper {
	
	
	//** SelectOne
	UserVO selectnickOne(UserVO vo);
	UserVO selectOne(UserVO vo);
	
	//** Insert
	int insert(UserVO vo);
	//** Update
	int update(UserVO vo);
	//** Delete
	int delete(UserVO vo);
	
	//** List
	List<UserVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	List<UserVO> selectList();
}//interface
