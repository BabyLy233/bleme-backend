package com.babyly.bleme.controller;

import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.User;
import com.babyly.bleme.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public Result<User> login(@RequestBody User user) {
        return userService.login(user);
    }

    @PostMapping("/register")
    public Result<User> register(@RequestBody User user) {
        return userService.register(user);
    }

    @GetMapping("/getUserInfo")
    public Result<User> getUserInfo(Integer id) {
        return userService.getUserInfo(id);
    }

    @PostMapping("/verifyPayPwd")
    public Result<Boolean> verifyPayPwd(
            @RequestParam("userId") Integer userId,
            @RequestParam("payPwd") String payPwd
    ) {
        return userService.verifyPayPwd(userId, payPwd);
    }

    @PutMapping("/editPwd")
    public Result<Boolean> editPassword(
            @RequestParam("userId") Integer userId,
            @RequestParam("newPwd") String newPwd,
            @RequestParam("oldPwd") String oldPwd
    ) {
        return userService.editPassword(userId, newPwd, oldPwd);
    }
}
