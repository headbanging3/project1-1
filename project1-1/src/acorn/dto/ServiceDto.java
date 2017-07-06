package acorn.dto;

public class ServiceDto {
	private int mem_num;
	private String title;
	private String s_content;
	private String regdate;
	
	public ServiceDto(){}

	public ServiceDto(int mem_num, String title, String s_content, String regdate) {
		super();
		this.mem_num = mem_num;
		this.title = title;
		this.s_content = s_content;
		this.regdate = regdate;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getS_content() {
		return s_content;
	}

	public void setS_content(String s_content) {
		this.s_content = s_content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
