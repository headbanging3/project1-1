package acorn.dto;

public class QnaListDto {
	private int qna_listnum;
	private String qna_title;
	private int qna_pdnum;
	private String qna_writer;
	private String qna_content;
	private String qna_regdate;
	
	public QnaListDto(){}

	public QnaListDto(int qna_listnum, String qna_title, int qna_pdnum, String qna_writer, String qna_content,
			String qna_regdate) {
		super();
		this.qna_listnum = qna_listnum;
		this.qna_title = qna_title;
		this.qna_pdnum = qna_pdnum;
		this.qna_writer = qna_writer;
		this.qna_content = qna_content;
		this.qna_regdate = qna_regdate;
	}

	public int getQna_listnum() {
		return qna_listnum;
	}

	public void setQna_listnum(int qna_listnum) {
		this.qna_listnum = qna_listnum;
	}

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public int getQna_pdnum() {
		return qna_pdnum;
	}

	public void setQna_pdnum(int qna_pdnum) {
		this.qna_pdnum = qna_pdnum;
	}

	public String getQna_writer() {
		return qna_writer;
	}

	public void setQna_writer(String qna_writer) {
		this.qna_writer = qna_writer;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public String getQna_regdate() {
		return qna_regdate;
	}

	public void setQna_regdate(String qna_regdate) {
		this.qna_regdate = qna_regdate;
	}
	
}
