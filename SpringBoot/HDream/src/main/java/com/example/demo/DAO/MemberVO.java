package com.example.demo.DAO;

public class MemberVO {
    private String userId;
    private String userName;
    private String userGender;
    private String userBirth;
    private String userTel;

    public String getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserGender() {
        return userGender;
    }

    public String getUserBirth() {
        return userBirth;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public void setUserBirth(String userBirth) {
        this.userBirth = userBirth;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }
}
