package com.example.demo.contoller;

import com.example.demo.domain.User;
import com.example.demo.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.awt.*;
import java.util.List;

@Log4j2
@RestController
@RequestMapping("user")
public class MainController {

    @Autowired
    UserService userService;

    //post
    @RequestMapping(value = "posttest", method = RequestMethod.POST)
    public String postTest(@RequestBody String test) {
        return test;
    }// RequestMapping 은 method Type을 설정이 필요하다.

    @PostMapping(value = "posttest2")
    public String psottest2(@RequestBody String test2) {
        return test2;
    }// PsotMapping 은 method Type 필요없이 post 를 전송이 가능.

//    @GetMapping(value = "getuser")
//    public List<User> getUser() {
//        return userService.findAllUsers();
//    }

    @GetMapping(value = "serch")
    public List<User> serch(@RequestParam String USER_ID) {
        return userService.serchID(USER_ID);
    } // serch 메서드를 실행을 하면 String USER_ID 변수 값이 PoST 맨에서 입력을 하면 아래 문장이 실행.

    @RequestMapping(value = "inputValue", method = RequestMethod.POST)
    public void inputValue(@RequestBody User paramUser) {
        log.info("test");

        userService.inputValue(
                User.builder()
                        .userId(paramUser.getUserId())
                        .userPw(paramUser.getUserPassword())
                        .userName(paramUser.getUserPassword())
                        .userGender(paramUser.getUserGender())
                        .userBirth_yy(paramUser.getUserBirth())
                        .userBirth_mm(paramUser.getUserBirth())
                        .userBirth_dd(paramUser.getUserBirth())
                        .userEmail(paramUser.getUserEmail())
                        .userEmailDomain(paramUser.getUserEmail())
                        .userTel_1st(paramUser.getUserTel())
                        .userTel_2nd(paramUser.getUserTel())
                        .userTel_3rd(paramUser.getUserTel())
                        .userAddress(paramUser.getUserAdd())
                        .build());
        log.info("saveSuccess");
        log.info("======= test=======" + paramUser);
    }



}