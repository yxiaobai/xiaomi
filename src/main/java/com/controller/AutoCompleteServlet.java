package com.controller;

import com.entity.GoodsInfo;
import com.google.gson.Gson;
import com.mapper.AutoCompleteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
public class AutoCompleteServlet {
    @Autowired
    private AutoCompleteMapper autoCompleteMapper;
    @RequestMapping("/auto")
    public void auto(HttpServletRequest req, HttpServletResponse res){
        res.setContentType("text/html;charset=utf-8");
        try {
            List<GoodsInfo> users = autoCompleteMapper.getNames(req.getParameter("userName"));
                Gson gson = new Gson();
                String str = gson.toJson(users);
                res.getWriter().print(str);
            } catch(Exception e){
                e.printStackTrace();
            }
        }

}
