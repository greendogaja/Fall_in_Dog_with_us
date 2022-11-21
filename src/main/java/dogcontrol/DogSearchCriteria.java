package dogcontrol;

import lombok.Data;

@Data
public class DogSearchCriteria extends DogCriteria {
	
	private String searchType;
	private String keyword;

}
