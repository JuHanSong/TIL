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
public class User {
    @Id
    @Column(name = "USER_NUM")
    private String userNum;
    @Column(name = "USER_NAME")
    private String userName;
    @Column(name = "USER_ID") // DB  Column
    private String userId; // JAVA
    @Column(name = "USER_PW")
    private String userPassword;
    @Column(name = "USER_TEL")
    private String userTel;

    @Builder
    public User(String userNum, String userName, String userId, String userPw, String userTel) {
        this.userNum = userNum;
        this.userName = userName;
        this.userId = userId;
        this.userPassword = userPw;
        this.userTel = userTel;
    }
}