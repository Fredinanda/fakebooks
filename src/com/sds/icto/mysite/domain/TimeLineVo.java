package com.sds.icto.mysite.domain;

public class TimeLineVo {
	

	private Long timelineno;
	private Long memberno;
	private String firstname;
	private String lastname;
	private String message;
	private String reg_date;
	private String imagedir;
	private Long likes;
	
	
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public String getImagedir() {
		return imagedir;
	}
	public void setImagedir(String imagedir) {
		this.imagedir = imagedir;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public Long getTimelineno() {
		return timelineno;
	}
	public void setTimelineno(Long timelineno) {
		this.timelineno = timelineno;
	}
	public Long getMemberno() {
		return memberno;
	}
	public void setMemberno(Long memberno) {
		this.memberno = memberno;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_dete(String reg_date) {
		this.reg_date = reg_date;
	}

	

}
