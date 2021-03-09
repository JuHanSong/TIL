package com.example.demo.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "user")
public class User{
    @Id
//    @Column(name = "USER_NUM")
//    private String userNum;
    @Column(name = "USER_ID") // DB  Column
    private String userId; // JAVA
    @Column(name = "USER_PW")
    private String userPassword;
    @Column(name = "USER_NAME")
    private String userName;
    @Column(name = "USER_GENDER")
    private String userGender;
    @Column(name = "USER_BIRTH")
    private String userBirth;
    @Column(name = "USER_EMAIL")
    private String userEmail;
    @Column(name = "USER_TEL")
    private String userTel;
    @Column(name = "USER_ADDRESS")
    private String userAdd;

    @Builder
    public User(String userId, String userPw, String userName, String userGender, String userBirth_yy, String userBirth_mm,String userBirth_dd, String userEmail, String userEmailDomain, String userTel_1st, String userTel_2nd, String userTel_3rd, String userAddress) {
        this.userId = userId;
        this.userPassword = userPw;
        this.userName = userName;
        this.userGender = userGender;
        this.userBirth = userBirth_yy + userBirth_mm + userBirth_dd;
        this.userEmail = userEmail + userEmailDomain;
        this.userTel = userTel_1st + userTel_2nd + userTel_3rd;
        this.userAdd = userAddress;
    }

}