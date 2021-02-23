package com.example.demo.controller;


import com.example.demo.domain.User;
import com.example.demo.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.awt.*;
import java.util.List;

@Log4j2
@RestController
@RequestMapping("user")
public class MainController {

    @Autowired
    UserService userService;

    @RequestMapping("main")
    public String main() {
        return "main";
    }

    //get
    @RequestMapping(value = "gettest", method = RequestMethod.GET)
    public String getTest(@RequestParam String name) {
        return name;
    } // Map 방식은 metod 에서 타입을 선택(GET, POST 등...) 선택.

    @RequestMapping(value = "getName", method = RequestMethod.GET)
    public String getName(@RequestParam String name) {
        return name;
    }

    @GetMapping(value = "getmappingtest")//URL 주소
    public String getMappingTest(@RequestParam String name) {
        return name;
    }// Get으로만 사용이 가능, RequestMapping 보다 최신.

    //post
    @RequestMapping(value = "posttest", method = RequestMethod.POST)
    public String postTest(@RequestBody String test) {
        return test;
    }// RequestMapping 은 method Type을 설정이 필요하다.

    @PostMapping(value = "posttest2")
    public String psottest2(@RequestBody String test2) {
        return test2;
    }// PsotMapping 은 method Type 필요없이 post 를 전송이 가능.

    @GetMapping(value = "getuser")
    public List<User> getUser() {
        return userService.findAllUsers();
    }

    @GetMapping(value = "serch")
    public List<User> serch(@RequestParam String USER_ID) {
        return userService.serchID(USER_ID);
    } // serch 메서드를 실행을 하면 String USER_ID 변수 값이 PoST 맨에서 입력을 하면 아래 문장이 실행.

    @RequestMapping(value = "inputValue", method = RequestMethod.POST)
    public void inputValue(@RequestBody User paramUser) {

        User user = userService.inputValue(
                User.builder()
                        .userNum(paramUser.getUserNum())
                        .userId(paramUser.getUserId())
                        .userName(paramUser.getUserName())
                        .userPw(paramUser.getUserPassword())
                        .userTel(paramUser.getUserTel())
                        .build());
        log.info("saveSuccess");
    }


}
