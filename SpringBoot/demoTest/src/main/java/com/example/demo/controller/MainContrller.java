package com.example.demo.controller;


import com.example.demo.domain.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("user")

public class MainContrller {

    @Autowired
    UserService userService;

    @GetMapping(value = "getuser")
    public List<User> getUser() {
        return userService.findAllUsers();
    }

}
