package adoptcontrol;

import lombok.Getter;
import lombok.ToString;

public class AdoptCriteria {
	private int rowsPerPage;
	private int currPage;
	private int sno;
	private int eno;
	
	public AdoptCriteria() {
		this.rowsPerPage=10;
		this.currPage=1;
	}
	public void setCurrPage(int currPage) {
		if (currPage>1) this.currPage=currPage;
		else this.currPage=1;
	}
	public void setRowsPerPage(int rowsPerPage) {
		if ( rowsPerPage>10  &&  rowsPerPage<=50 )
			 this.rowsPerPage=rowsPerPage;
		else this.rowsPerPage=10; 
	}
	public void setSnoEno() {
		if ( this.sno<1 ) this.sno=1;
		this.sno=(this.currPage-1)*this.rowsPerPage;
		this.eno=this.sno + this.rowsPerPage - 1 ;
	}
	
	
	
	public int getRowsPerPage() {
		return rowsPerPage;
	}
	public int getCurrPage() {
		return currPage;
	}
	public int getSno() {
		return sno;
	}
	public int getEno() {
		return eno;
	}
	
	
	
	@Override
	public String toString() {
		return "Criteria [rowsPerPage=" + rowsPerPage + ", currPage=" + currPage + ", sno=" + sno + ", eno=" + eno
				+ "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

} //class
