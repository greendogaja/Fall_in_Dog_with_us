package usercontrol;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class Criteria {
	private int rowsPerPage;
	private int currPage;    
	private int sno; 
	private int eno;
	
	public Criteria() {
		this.rowsPerPage=5;
		this.currPage=1;
	}
	public void setCurrPage(int currPage) {
		if (currPage>1) this.currPage=currPage;
		else this.currPage=1;
	}
	public void setRowsPerPage(int rowsPerPage) {
		if ( rowsPerPage>5  &&  rowsPerPage<=50 )
			 this.rowsPerPage=rowsPerPage;
		else this.rowsPerPage=5; 
	}
	public void setSnoEno() {
		if ( this.sno<1 ) this.sno=1;
		this.sno=((this.currPage-1)*this.rowsPerPage); 
		this.eno=this.sno + this.rowsPerPage - 1 ;   
	}
}//class
