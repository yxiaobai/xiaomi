package com.controller;

import com.mapper.CommunityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Admincomm {
    @Autowired
    private CommunityMapper communityMapper;
    @RequestMapping("/admin_reply")
    public ModelAndView admin_reply() {
        ModelAndView ma = new ModelAndView("admin/admin_reply");
        ma.addObject("showadmins", communityMapper.queryalls());
        return ma;
    }

    @RequestMapping("/xms_dels")
    public String xms_dels(int c_id){
        communityMapper.delById(c_id);
        return "redirect:/admin_reply";
    }
}
