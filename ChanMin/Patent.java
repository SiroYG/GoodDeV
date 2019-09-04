package vo;

public class Patent {
	
	String patentNum; 			// (특허번호) 
	String patentName;			// (특허이름) 
	String patentHolderName; 	// (특허보유자, 기업) 
	String patentContent;		// (특허내용)
	String patenttype;			// (특허 분류)
	String patentAppDate;		// (특허신청, 출원일)
	String patentRegdate;		// (특허등록날짜)
	
	
	public Patent() {}


	public Patent(String patentNum, String patentName, String patentHolderName, String patentContent, String patenttype,
			String patentAppDate, String patentRegdate) {
		this.patentNum = patentNum;
		this.patentName = patentName;
		this.patentHolderName = patentHolderName;
		this.patentContent = patentContent;
		this.patenttype = patenttype;
		this.patentAppDate = patentAppDate;
		this.patentRegdate = patentRegdate;
	}


	public String getPatentNum() {
		return patentNum;
	}


	public void setPatentNum(String patentNum) {
		this.patentNum = patentNum;
	}


	public String getPatentName() {
		return patentName;
	}


	public void setPatentName(String patentName) {
		this.patentName = patentName;
	}


	public String getPatentHolderName() {
		return patentHolderName;
	}


	public void setPatentHolderName(String patentHolderName) {
		this.patentHolderName = patentHolderName;
	}


	public String getPatentContent() {
		return patentContent;
	}


	public void setPatentContent(String patentContent) {
		this.patentContent = patentContent;
	}


	public String getPatenttype() {
		return patenttype;
	}


	public void setPatenttype(String patenttype) {
		this.patenttype = patenttype;
	}


	public String getPatentAppDate() {
		return patentAppDate;
	}


	public void setPatentAppDate(String patentAppDate) {
		this.patentAppDate = patentAppDate;
	}


	public String getPatentRegdate() {
		return patentRegdate;
	}


	public void setPatentRegdate(String patentRegdate) {
		this.patentRegdate = patentRegdate;
	}


	@Override
	public String toString() {
		return "Patent [patentNum=" + patentNum + ", patentName=" + patentName + ", patentHolderName="
				+ patentHolderName + ", patentContent=" + patentContent + ", patenttype=" + patenttype
				+ ", patentAppDate=" + patentAppDate + ", patentRegdate=" + patentRegdate + "]";
	}
	
	
	
	
}
