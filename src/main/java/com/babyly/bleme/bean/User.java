package com.babyly.bleme.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;


@TableName("user")
@Data
public class User {
    private Integer id;
    private String username;
    private String password;
    private Integer role;
    private String phone;
    private String payPwd;
}
