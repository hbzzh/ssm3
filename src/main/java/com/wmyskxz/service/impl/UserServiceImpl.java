package com.wmyskxz.service.impl;

import com.wmyskxz.dao.UserDao;
import com.wmyskxz.entity.User;
import com.wmyskxz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    public List<User> findUserById() {
     return  userDao.findUserById();
    }

    public void addUser(User user) {
        userDao.addUser(user);
    }

    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    public User getUserById(Integer id) {
       return userDao.getUserById(id);
    }

    public User get(Integer id) {
      return userDao.get(id);
    }

    public void deleteUserById(Integer id) {
        userDao.deleteUserById(id);
    }


}
