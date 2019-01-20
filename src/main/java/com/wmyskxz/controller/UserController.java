package com.wmyskxz.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wmyskxz.entity.User;
import com.wmyskxz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class UserController {


    @Autowired
    UserService userService;

    /**
     * 查询全部用户
     * @param map
     * @return
     */
    @RequestMapping("users")
    public String findUserById(Map<String,Object>map){
        List<User> users = userService.findUserById();
        map.put("users",users);
        return "index";
    }

    /**
     *删除用户
     */
   @RequestMapping(value = "user/{id}",method=RequestMethod.DELETE)
   public String deleteUserById(@PathVariable("id") Integer id){
       userService.deleteUserById(id);
       return "redirect:/users";
   }
   @RequestMapping("add")
   public String add(){
       return "add";
   }

    /**
     * 添加用户
     */
    @RequestMapping(value = "addUser",method = RequestMethod.POST)
    public String addUser(User user){
       userService.addUser(user);
       return "redirect:/users";
}

    /**
     * 更新用户
     */
    @RequestMapping(value = "update",method = RequestMethod.POST)
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:/users";
    }


    @RequestMapping("getUserById")
    public String getUserById(Map<String,Object>map,Integer id){
       User user = userService.getUserById(id);
        map.put("user",user);
        return "edit";
    }
}
