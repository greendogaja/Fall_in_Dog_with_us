package vo;

import lombok.Data;

@Data
public class NcommentVO {

	private int cno;
	private int nno;
	private int grp;
	private int grps;
	private int grpl;
	private String id;
	private String content;
	private String regdate;
	private String wimg;
	private String nname;
	
	// user 테이블에서 가져올 uploadfile 담는 vo
	private String uploadfile;
	
}
