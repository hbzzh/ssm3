package com.wmyskxz.service;

import com.wmyskxz.entity.User;

import java.util.List;

public interface UserService {


    void deleteUserById(Integer id);

    List<User> findUserById();

    void addUser(User user);

    void updateUser(User user);

    User getUserById(Integer id);
}
