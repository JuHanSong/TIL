package com.example.demo.service;

import com.example.demo.domain.User;
import com.example.demo.repository.UserRepository;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Log4j2
@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    public List<HashMap> serchAllData() {
        List<HashMap> mapList = new ArrayList<>();

        List<User> list = userRepository.findAll();

        for(User u : list){
            HashMap<String, String> hashMap = new HashMap<>();

            hashMap.put("userId", u.getUserId());
            hashMap.put("userName", u.getUserName());
            hashMap.put("userGender", u.getUserGender());
            hashMap.put("userBirth", u.getUserBirth());
            hashMap.put("userTel", u.getUserTel());
            mapList.add(hashMap);

        }
        log.info("Test Data000 = {} ", mapList.toString());

        return mapList;
    }

    public List<User> serchID(String userId) {
        return userRepository.findByUserId(userId);
    }

    public String tryLogin(String userId, String userPw){
        String result = "";
        List<User> inputVal = userRepository.findAllByUserIdAndAndUserPassword(userId, userPw);

        if(CollectionUtils.isEmpty(inputVal)){ // :리스트에 값이 있는지 확인  CollectionUtils.isNotEmpty(inputVal) : 리스트에 값이 없는지 확인
            result = "Login Fail";
        }else{
            result = "Login Pass";
        }
        return result;
    }

    public User inputValue(User user) {
        return userRepository.save(user);
    }

}
