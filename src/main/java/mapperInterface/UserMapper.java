package mapperInterface;





import java.util.List;

import usercontrol.SearchCriteria;
import vo.UserVO;


public interface UserMapper {
	
	
	
	UserVO selectOne(UserVO vo);
	int insert(UserVO vo);
	int update(UserVO vo);
	int delete(UserVO vo);
	List<UserVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	List<UserVO> selectList();
}//interface
