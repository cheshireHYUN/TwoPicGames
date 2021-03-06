package members.review.vo;

public class ReviewVO {
	private String rev_id;
	private String mem_id;
	private String game_id;
	private String rev_tit;
	private String rev_con;
	private String rev_dt;
	private String rev_grd;

	public ReviewVO() {}
	
	public ReviewVO(String mem_id, String game_id, String rev_tit, String rev_con, String rev_grd) {
		super();
		this.mem_id = mem_id;
		this.game_id = game_id;
		this.rev_tit = rev_tit;
		this.rev_con = rev_con;
		this.rev_grd = rev_grd;
	}
	
	public ReviewVO(String rev_id, String mem_id, String game_id, String rev_tit, String rev_con, String rev_dt,
			String rev_grd) {
		super();
		this.rev_id = rev_id;
		this.mem_id = mem_id;
		this.game_id = game_id;
		this.rev_tit = rev_tit;
		this.rev_con = rev_con;
		this.rev_dt = rev_dt;
		this.rev_grd = rev_grd;
	}

	public String getRev_id() {
		return rev_id;
	}

	public void setRev_id(String rev_id) {
		this.rev_id = rev_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getGame_id() {
		return game_id;
	}

	public void setGame_id(String game_id) {
		this.game_id = game_id;
	}

	public String getRev_tit() {
		return rev_tit;
	}

	public void setRev_tit(String rev_tit) {
		this.rev_tit = rev_tit;
	}

	public String getRev_con() {
		return rev_con;
	}

	public void setRev_con(String rev_con) {
		this.rev_con = rev_con;
	}

	public String getRev_dt() {
		return rev_dt;
	}

	public void setRev_dt(String rev_dt) {
		this.rev_dt = rev_dt;
	}

	public String getRev_grd() {
		return rev_grd;
	}

	public void setRev_grd(String rev_grd) {
		this.rev_grd = rev_grd;
	}	
}
