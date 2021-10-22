package com.babyly.bleme.service.impl;

import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.User;
import com.babyly.bleme.mapper.UserMapper;
import com.babyly.bleme.service.UserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Result<User> login(User u) {
        Result<User> result = new Result<>();
        result.setStatus(500);
        result.setDetail(null);
        result.setMessage("登录失败");

        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("username", u.getUsername())
                .eq("password", u.getPassword());
        User user = userMapper.selectOne(wrapper);

        if (user == null) {
            result.setStatus(200);
            result.setMessage("用户名或密码错误");
            return result;
        }

        result.setStatus(200);
        result.setDetail(user);
        result.setMessage("登录成功");
        return result;
    }

    @Override
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Result<User> register(User u) {
        Result<User> result = new Result<>();
        result.setStatus(500);
        result.setDetail(null);
        result.setMessage("注册失败");

        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("username", u.getUsername());
        User user = userMapper.selectOne(wrapper);

        if (user != null) {
            result.setStatus(200);
            result.setMessage("用户名已被占用");
            return result;
        }

        int i = userMapper.insert(u);
        if (i == 0) {
            result.setStatus(200);
            result.setMessage("注册失败");
            return result;
        }

        result.setStatus(200);
        result.setMessage("注册成功");
        result.setDetail(u);
        return result;
    }

    @Override
    public Result<User> getUserInfo(Integer id) {
        Result<User> result = new Result<>();
        result.setStatus(500);
        result.setMessage("获取用户信息失败");

        User user = userMapper.selectById(id);

        if (user == null) {
            result.setStatus(200);
            result.setMessage("未查询到该用户信息");
            return result;
        }

        result.setDetail(user);
        result.setStatus(200);
        result.setMessage("获取用户信息成功");

        return result;
    }

    @Override
    public Result<Boolean> verifyPayPwd(Integer userId, String payPwd) {
        Result<Boolean> result = new Result<>();
        result.setStatus(500);
        result.setDetail(false);
        result.setMessage("交易密码验证失败");

        User user = userMapper.selectById(userId);
        if (user.getPayPwd().equals(payPwd)) {
            result.setStatus(200);
            result.setDetail(true);
            result.setMessage("交易密码验证成功");
        }

        result.setStatus(200);
        return result;
    }

    @Override
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Result<Boolean> editPassword(Integer userId, String newPwd, String oldPwd) {
        Result<Boolean> result = new Result<>();
        result.setStatus(500);
        result.setDetail(false);
        result.setMessage("修改密码失败");

        User user = userMapper.selectById(userId);

        if (user == null) {
            result.setStatus(200);
            result.setMessage("未找到此用户");
            return result;
        }
        if (!user.getPassword().equals(oldPwd)) {
            result.setStatus(200);
            result.setMessage("旧密码错误\n修改失败");
            return result;
        }

        user.setPassword(newPwd);
        userMapper.updateById(user);

        result.setStatus(200);
        result.setDetail(true);
        result.setMessage("修改密码成功");
        return result;
    }
}
