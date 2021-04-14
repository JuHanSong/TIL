package com.example.demo.contoller;

import com.example.demo.domain.User;
import com.fasterxml.jackson.annotation.JsonProperty;
import jdk.nashorn.internal.ir.debug.JSONWriter;
import lombok.extern.log4j.Log4j2;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Log4j2
@Controller
@RequestMapping("test")
public class TestController {

    @Autowired
    UserService userService;


    @RequestMapping(value = "/")
    public String goLoginPage() {
        log.info("======= go LoginPage =======");
        return "login.html";
    }

    @RequestMapping(value = "gojoinPage")
    public String goJoinPage(){
        log.info("======= go JoinPage =======");
        return "joinPage.html";
    }

    @RequestMapping("goUserManager")
    public String goUserManager(){
        log.info("======= go UserManager =======");
        return "userManager";
    }
    @RequestMapping(value = "goUserBoard")
    public String goUserBoard(){
        log.info("======= go UserBoard =======");
        return "board.html";
    }
    @RequestMapping(value = "goUserNotice")
    public String goUserNotice(){
        log.info("======= go UserNotice =======");
        return "notice.html";
    }
    @RequestMapping(value = "inputTest", method = RequestMethod.POST)
    public String postTest(@RequestParam String userId, @RequestParam String userPw, @RequestParam String userName, @RequestParam String userGender, @RequestParam String userBirth_yy
                            ,@RequestParam String userBirth_mm, @RequestParam String userBirth_dd, @RequestParam String userEmail, @RequestParam String userEmailDomain
                            ,@RequestParam String userTel_1st, @RequestParam String userTel_2nd, @RequestParam String userTel_3rd, @RequestParam String userAddress) {
        log.info("======= HTML DATA In =======");
        log.info("ID = {}, PW = {}", userId, userPw);

        userService.inputValue(
                User.builder()
                        .userId(userId)
                        .userPw(userPw)
                        .userName(userName)
                        .userGender(userGender)
                        .userBirth_yy(userBirth_yy)
                        .userBirth_mm(userBirth_mm)
                        .userBirth_dd(userBirth_dd)
                        .userEmail(userEmail)
                        .userEmailDomain(userEmailDomain)
                        .userTel_1st(userTel_1st)
                        .userTel_2nd(userTel_2nd)
                        .userTel_3rd(userTel_3rd)
                        .userAddress(userAddress)
                        .build());

        return "redirect:/test/JoinPage"; // 원래 페이지로 돌아오는 구문.
    }

    @RequestMapping(value = "tryLogin", method = RequestMethod.POST)
    public String LoginTest(@RequestParam String userId, @RequestParam String userPw){
        log.info("======== go tyyLogin =========");
        log.info("ID : {}, PW : {}", userId, userPw);
        String loginResult = userService.tryLogin(userId, userPw);

        if (loginResult == "Login Pass"){
            return "index.html";
        }else{
            return "fail.html";
        }
    }

    @RequestMapping(value = "serchAllData", method = RequestMethod.GET)
    public List<HashMap> findAllUsers(){
        List<HashMap> mapList = userService.serchAllData();
        log.info("Test Data111 = {} ", mapList.toString());
        log.info("========= serchData =========");
        for(HashMap h : mapList) {
            log.info("ID : {} Name : {} GENDER : {}Birth : {}TEL : {}", h.get("userId"),h.get("userName"),h.get("userGender"), h.get("userBirth"), h.get("userTel"));
        }
        return mapList;
    }


}
