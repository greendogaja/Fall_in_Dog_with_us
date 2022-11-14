package usercontrol;

import lombok.Data;

@Data
public class SearchCriteria extends Criteria {
	private String searchType;
	private String keyword;
	private String[] check;  // 필요시 사용
	private String namekey;
	private String phonekey;
	private String idkey;
}
