package noticeControl;

import lombok.Data;

@Data
public class SearchCriteria extends Criteria {
	
	private String searchType;
	private String keyword;
	private String[] check;  // 필요시 사용
	
	private String id;
	private String uploadfile;
	private int shno;

} //class
