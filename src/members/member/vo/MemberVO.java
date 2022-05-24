package members.member.vo;

import java.util.Date;

public class MemberVO {
	private String mem_id;
	private String mem_name;
	private String mem_pw;
	private String mem_ph;
	private String mem_mail;
	private String mem_bir;
	private String mem_point;
	private String mem_wit;
	private String mem_auth;
	
	public MemberVO() {}
	
	public MemberVO(String mem_id, String mem_name, String mem_pw, String mem_ph, String mem_mail, String mem_bir,
			String mem_point, String mem_wit, String mem_auth) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_pw = mem_pw;
		this.mem_ph = mem_ph;
		this.mem_mail = mem_mail;
		this.mem_bir = mem_bir;
		this.mem_point = mem_point;
		this.mem_wit = mem_wit;
		this.mem_auth = mem_auth;
	}

	public MemberVO(String mem_id, String mem_name, String mem_pw, String mem_ph, String mem_mail, String mem_bir) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_pw = mem_pw;
		this.mem_ph = mem_ph;
		this.mem_mail = mem_mail;
		this.mem_bir = mem_bir;
	}

	public MemberVO(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}
	
	public MemberVO(String mem_id) {
		super();
		this.mem_id = mem_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_ph() {
		return mem_ph;
	}

	public void setMem_ph(String mem_ph) {
		this.mem_ph = mem_ph;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getMem_bir() {
		return mem_bir;
	}

	public void setMem_bir(String mem_bir) {
		this.mem_bir = mem_bir;
	}

	public String getMem_point() {
		return mem_point;
	}

	public void setMem_point(String mem_point) {
		this.mem_point = mem_point;
	}

	public String getMem_wit() {
		return mem_wit;
	}

	public void setMem_wit(String mem_wit) {
		this.mem_wit = mem_wit;
	}

	public String getMem_auth() {
		return mem_auth;
	}

	public void setMem_auth(String mem_auth) {
		this.mem_auth = mem_auth;
	}	
}
