package com.babyly.bleme.service;

import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.User;

public interface UserService {
    Result<User> login(User user);

    Result<User> register(User user);

    Result<User> getUserInfo(Integer id);

    Result<Boolean> verifyPayPwd(Integer userId, String payPwd);

    Result<Boolean> editPassword(Integer userId, String newPwd,String oldPwd);
}
