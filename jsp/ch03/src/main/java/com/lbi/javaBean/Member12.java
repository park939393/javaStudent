package com.lbi.javaBean;

public class Member12 {
	
	 private String name; 
	   private String pwd;
	   private String email;
	   private String title;
	   private String content;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	@Override
	public String toString() {
		return "Member12 [name=" + name + ", pwd=" + pwd + ", email=" + email + ", title=" + title + ", content="
				+ content + "]";
	}
	  

}
