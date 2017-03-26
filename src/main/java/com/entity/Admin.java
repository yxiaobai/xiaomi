package com.entity;

import lombok.Data;

@Data
public class Admin {
    private int adminid; //管理员id
    private String admins;//管理员账号
    private String password;//管理员密码
}
