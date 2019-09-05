package aaa;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * PATENT 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class PatentAaa implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** patentNum. */
	private String patentnum;

	/** 특허명. */
	private String patentname;

	/** 보유자이름(회사명). */
	private String patentholdername;

	/** 특허내용. */
	private String patentcontent;

	/** 특허신청일&출원일. */
	private Date patentappdate;

	/** 특허등록날짜(승인일). */
	private Date patentregdate;

	/** 특허분류. */
	private String patenttype;

	/** PATENTSUB 목록. */
	private Set<PatentsubAaa> patentsubSet;

	/** 브릿지테이블(아이템, 특허j) 목록. */
	private Set<PtiAaa> ptiSet;

	/**
	 * 생성자.
	 */
	public PatentAaa() {
		this.patentsubSet = new HashSet<PatentsubAaa>();
		this.ptiSet = new HashSet<PtiAaa>();
	}

	/**
	 * patentNum을 설정합니다..
	 * 
	 * @param patentnum
	 *            patentNum
	 */
	public void setPatentnum(String patentnum) {
		this.patentnum = patentnum;
	}

	/**
	 * patentNum을 가져옵니다..
	 * 
	 * @return patentNum
	 */
	public String getPatentnum() {
		return this.patentnum;
	}

	/**
	 * 특허명을 설정합니다..
	 * 
	 * @param patentname
	 *            특허명
	 */
	public void setPatentname(String patentname) {
		this.patentname = patentname;
	}

	/**
	 * 특허명을 가져옵니다..
	 * 
	 * @return 특허명
	 */
	public String getPatentname() {
		return this.patentname;
	}

	/**
	 * 보유자이름(회사명)을 설정합니다..
	 * 
	 * @param patentholdername
	 *            보유자이름(회사명)
	 */
	public void setPatentholdername(String patentholdername) {
		this.patentholdername = patentholdername;
	}

	/**
	 * 보유자이름(회사명)을 가져옵니다..
	 * 
	 * @return 보유자이름(회사명)
	 */
	public String getPatentholdername() {
		return this.patentholdername;
	}

	/**
	 * 특허내용을 설정합니다..
	 * 
	 * @param patentcontent
	 *            특허내용
	 */
	public void setPatentcontent(String patentcontent) {
		this.patentcontent = patentcontent;
	}

	/**
	 * 특허내용을 가져옵니다..
	 * 
	 * @return 특허내용
	 */
	public String getPatentcontent() {
		return this.patentcontent;
	}

	/**
	 * 특허신청일&출원일을 설정합니다..
	 * 
	 * @param patentappdate
	 *            특허신청일&출원일
	 */
	public void setPatentappdate(Date patentappdate) {
		this.patentappdate = patentappdate;
	}

	/**
	 * 특허신청일&출원일을 가져옵니다..
	 * 
	 * @return 특허신청일&출원일
	 */
	public Date getPatentappdate() {
		return this.patentappdate;
	}

	/**
	 * 특허등록날짜(승인일)을 설정합니다..
	 * 
	 * @param patentregdate
	 *            특허등록날짜(승인일)
	 */
	public void setPatentregdate(Date patentregdate) {
		this.patentregdate = patentregdate;
	}

	/**
	 * 특허등록날짜(승인일)을 가져옵니다..
	 * 
	 * @return 특허등록날짜(승인일)
	 */
	public Date getPatentregdate() {
		return this.patentregdate;
	}

	/**
	 * 특허분류을 설정합니다..
	 * 
	 * @param patenttype
	 *            특허분류
	 */
	public void setPatenttype(String patenttype) {
		this.patenttype = patenttype;
	}

	/**
	 * 특허분류을 가져옵니다..
	 * 
	 * @return 특허분류
	 */
	public String getPatenttype() {
		return this.patenttype;
	}

	/**
	 * PATENTSUB 목록을 설정합니다..
	 * 
	 * @param patentsubSet
	 *            PATENTSUB 목록
	 */
	public void setPatentsubSet(Set<PatentsubAaa> patentsubSet) {
		this.patentsubSet = patentsubSet;
	}

	/**
	 * PATENTSUB를 추가합니다..
	 * 
	 * @param patentsub
	 *            PATENTSUB
	 */
	public void addPatentsub(PatentsubAaa patentsub) {
		this.patentsubSet.add(patentsub);
	}

	/**
	 * PATENTSUB 목록을 가져옵니다..
	 * 
	 * @return PATENTSUB 목록
	 */
	public Set<PatentsubAaa> getPatentsubSet() {
		return this.patentsubSet;
	}

	/**
	 * 브릿지테이블(아이템, 특허j) 목록을 설정합니다..
	 * 
	 * @param ptiSet
	 *            브릿지테이블(아이템, 특허j) 목록
	 */
	public void setPtiSet(Set<PtiAaa> ptiSet) {
		this.ptiSet = ptiSet;
	}

	/**
	 * 브릿지테이블(아이템, 특허j)를 추가합니다..
	 * 
	 * @param pti
	 *            브릿지테이블(아이템, 특허j)
	 */
	public void addPti(PtiAaa pti) {
		this.ptiSet.add(pti);
	}

	/**
	 * 브릿지테이블(아이템, 특허j) 목록을 가져옵니다..
	 * 
	 * @return 브릿지테이블(아이템, 특허j) 목록
	 */
	public Set<PtiAaa> getPtiSet() {
		return this.ptiSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((patentnum == null) ? 0 : patentnum.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		PatentAaa other = (PatentAaa) obj;
		if (patentnum == null) {
			if (other.patentnum != null) {
				return false;
			}
		} else if (!patentnum.equals(other.patentnum)) {
			return false;
		}
		return true;
	}

}