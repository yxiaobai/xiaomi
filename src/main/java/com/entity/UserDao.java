package com.entity;

import lombok.Data;

import java.util.Date;

 @Data
public class UserDao {
    private Integer u_id;
    private String u_name;
    private String u_pass;
    private String u_email;
    private String u_phone;
    private String u_tname;
    private String u_sex;
    private String u_address;
    private String u_face;
    private Date u_time;



}
