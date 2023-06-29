package com.lbi.javaBean;

public class MemberBean {
   
   private String name; // 항상 첫 글자는 소문자. 안그럼 클래스로 인식한다.
   // 변수명을 입력폼의name, db의 필드명과도 일치시키는 게 좋다.
   private String userid;
   private String nickname;
   private String pwd;
   private String email;
   private String phone;
   
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
   }
   public String getNickname() {
      return nickname;
   }
   public void setNickname(String nickname) {
      this.nickname = nickname;
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
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   // toString()도 만들어줬다.
   @Override
   public String toString() {
      return "MemberBean [name=" + name + ", userid=" + userid + ", nickname=" + nickname + ", pwd=" + pwd
            + ", email=" + email + ", phone=" + phone + "]";
   }
   
   
   
}