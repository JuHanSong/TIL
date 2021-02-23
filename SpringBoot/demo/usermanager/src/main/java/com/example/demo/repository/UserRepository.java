package com.example.demo.repository;

import com.example.demo.domain.User;
import com.example.demo.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.DeleteMapping;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, String> {

    //select * from test.user
    List<User> findAll();

    //select * from test.user where userid = ?
    List<User> findByUserId(String UserId);

    User save(User user);

}
