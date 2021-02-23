package com.example.demo.service;

import com.example.demo.domain.User;
import com.example.demo.repository.UserRepository;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Log4j2
@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public List<User> serchID(String inputID) {
        return userRepository.findByUserId(inputID);
    }

    public User inputValue(User user) {
        log.info("inputValue Success" + user.getUserId());
        return userRepository.save(user);
    }

}
