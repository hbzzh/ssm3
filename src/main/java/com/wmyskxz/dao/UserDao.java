package com.wmyskxz.dao;


import com.wmyskxz.entity.User;

import java.util.List;

public interface UserDao {

    List<User> findUserById();

    void deleteUserById(Integer id);


    void addUser(User user);

    void updateUser(User user);

    User get(Integer id);

    User getUserById(Integer id);
}
