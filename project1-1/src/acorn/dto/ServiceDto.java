package acorn.dto;

public class ServiceDto {
	private int mem_num;
	private String phone;
	private String email;
	private String title;
	private String content;
	private String regdate;
	private int rnum;
	private boolean state;
	private String type;
	
	public ServiceDto(){}

	public ServiceDto(int mem_num, String phone, String email, String title, String content, String regdate, int rnum,
			boolean state, String type) {
		super();
		this.mem_num = mem_num;
		this.phone = phone;
		this.email = email;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.rnum = rnum;
		this.state = state;
		this.type = type;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
}
