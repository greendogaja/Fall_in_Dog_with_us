package adoptcontrol;

import lombok.Data;

@Data
public class AdoptSearchCriteria extends AdoptCriteria {
	
	private String searchType;
	private String keyword;

}
