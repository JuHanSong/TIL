package com.example.demo.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

import javax.persistence.Table;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "user")

public class User {
    @Id
    @Column(name = "USER_ID")
    private String userId;
    @Column(name = "USER_PW")
    private String userPw;
    @Column(name = "USER_NAME")
    private String userName;

}
