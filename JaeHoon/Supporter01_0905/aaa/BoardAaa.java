package aaa;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Q&A게시판 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class BoardAaa implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** board_seq. */
	private Integer boardnum;

	/** 멤버(창업자, 기업, 소비자). */
	private MemberAaa member;

	/** 제목. */
	private String title;

	/** 내용. */
	private String content;

	/** 질문타입(공개, 비공개). */
	private String qtype;

	/** qCategory. */
	private String qcategory;

	/** 원본파일명. */
	private String originalfilename;

	/** 저장파일명. */
	private String savefilename;

	/** 게시판작성일. */
	private Date boarddate;

	/** 댓글 목록. */
	private Set<ReplyAaa> replySet;

	/**
	 * 생성자.
	 */
	public BoardAaa() {
		this.replySet = new HashSet<ReplyAaa>();
	}

	/**
	 * board_seq을 설정합니다..
	 * 
	 * @param boardnum
	 *            board_seq
	 */
	public void setBoardnum(Integer boardnum) {
		this.boardnum = boardnum;
	}

	/**
	 * board_seq을 가져옵니다..
	 * 
	 * @return board_seq
	 */
	public Integer getBoardnum() {
		return this.boardnum;
	}

	/**
	 * 멤버(창업자, 기업, 소비자)을 설정합니다..
	 * 
	 * @param member
	 *            멤버(창업자, 기업, 소비자)
	 */
	public void setMember(MemberAaa member) {
		this.member = member;
	}

	/**
	 * 멤버(창업자, 기업, 소비자)을 가져옵니다..
	 * 
	 * @return 멤버(창업자, 기업, 소비자)
	 */
	public MemberAaa getMember() {
		return this.member;
	}

	/**
	 * 제목을 설정합니다..
	 * 
	 * @param title
	 *            제목
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * 제목을 가져옵니다..
	 * 
	 * @return 제목
	 */
	public String getTitle() {
		return this.title;
	}

	/**
	 * 내용을 설정합니다..
	 * 
	 * @param content
	 *            내용
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * 내용을 가져옵니다..
	 * 
	 * @return 내용
	 */
	public String getContent() {
		return this.content;
	}

	/**
	 * 질문타입(공개, 비공개)을 설정합니다..
	 * 
	 * @param qtype
	 *            질문타입(공개, 비공개)
	 */
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}

	/**
	 * 질문타입(공개, 비공개)을 가져옵니다..
	 * 
	 * @return 질문타입(공개, 비공개)
	 */
	public String getQtype() {
		return this.qtype;
	}

	/**
	 * qCategory을 설정합니다..
	 * 
	 * @param qcategory
	 *            qCategory
	 */
	public void setQcategory(String qcategory) {
		this.qcategory = qcategory;
	}

	/**
	 * qCategory을 가져옵니다..
	 * 
	 * @return qCategory
	 */
	public String getQcategory() {
		return this.qcategory;
	}

	/**
	 * 원본파일명을 설정합니다..
	 * 
	 * @param originalfilename
	 *            원본파일명
	 */
	public void setOriginalfilename(String originalfilename) {
		this.originalfilename = originalfilename;
	}

	/**
	 * 원본파일명을 가져옵니다..
	 * 
	 * @return 원본파일명
	 */
	public String getOriginalfilename() {
		return this.originalfilename;
	}

	/**
	 * 저장파일명을 설정합니다..
	 * 
	 * @param savefilename
	 *            저장파일명
	 */
	public void setSavefilename(String savefilename) {
		this.savefilename = savefilename;
	}

	/**
	 * 저장파일명을 가져옵니다..
	 * 
	 * @return 저장파일명
	 */
	public String getSavefilename() {
		return this.savefilename;
	}

	/**
	 * 게시판작성일을 설정합니다..
	 * 
	 * @param boarddate
	 *            게시판작성일
	 */
	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}

	/**
	 * 게시판작성일을 가져옵니다..
	 * 
	 * @return 게시판작성일
	 */
	public Date getBoarddate() {
		return this.boarddate;
	}

	/**
	 * 댓글 목록을 설정합니다..
	 * 
	 * @param replySet
	 *            댓글 목록
	 */
	public void setReplySet(Set<ReplyAaa> replySet) {
		this.replySet = replySet;
	}

	/**
	 * 댓글를 추가합니다..
	 * 
	 * @param reply
	 *            댓글
	 */
	public void addReply(ReplyAaa reply) {
		this.replySet.add(reply);
	}

	/**
	 * 댓글 목록을 가져옵니다..
	 * 
	 * @return 댓글 목록
	 */
	public Set<ReplyAaa> getReplySet() {
		return this.replySet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardnum == null) ? 0 : boardnum.hashCode());
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
		BoardAaa other = (BoardAaa) obj;
		if (boardnum == null) {
			if (other.boardnum != null) {
				return false;
			}
		} else if (!boardnum.equals(other.boardnum)) {
			return false;
		}
		return true;
	}

}
