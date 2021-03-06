package com.example.demo.repository;

import com.example.demo.domain.User;
import com.example.demo.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.DeleteMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public interface UserRepository extends CrudRepository<User, String> {

    //select * from test.user
//    List<User> findAll();
    List<User> findAll();
    //select * from test.user where userid = ?
    List<User> findAllByUserIdAndAndUserPassword(String UserId, String UserPw);
    List<User> findByUserId(String userId);

    User save(User user);

    List<User> findByUserIdContaining(String userId);

}
