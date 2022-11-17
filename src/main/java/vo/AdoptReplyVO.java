package vo;

import lombok.Data;

@Data
public class AdoptReplyVO {
	
	private int rid;
	private int bid;
	private String content;
	private String reg_id;
	private String reg_dt;
	private String edit_dt;
	
}