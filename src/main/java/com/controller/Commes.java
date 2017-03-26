package com.controller;

import com.entity.Comms;
import com.entity.Community;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.CommsMapper;
import com.mapper.CommunityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class Commes {
    @Autowired
    private CommunityMapper communityMapper;
    @Autowired
    private CommsMapper commsMapper;
    @RequestMapping("/community")
    public ModelAndView test(@RequestParam(required=true,defaultValue="1") Integer page,
                             @RequestParam(required=false,defaultValue="5") Integer pageSize) {
        ModelAndView ma = new ModelAndView("community");
        PageHelper.startPage(page,pageSize);
        List<Community> list = communityMapper.queryalls();
        PageInfo<Community> p = new PageInfo<Community>(list);
        ma.addObject("commall",list);
        ma.addObject("page",p);
        ma.setViewName("community");
        return ma;
    }
    @RequestMapping("/comms1")
    public ModelAndView testes(int c_id){
        ModelAndView ma = new ModelAndView("comms1");
        ma.addObject("comm_show",communityMapper.queryById(c_id));
        ma.addObject("comm_shows",commsMapper.queall());
        /*ma.addObject("yu",commsMapper.queall());*/

       /* List<Comms> ls = commsMapper.queall();
        mv.addObject("cao",ls);*/
        return ma;
    }
    @RequestMapping("/xm_save")
    public String save(Community community){
        System.out.println(community.toString());
        communityMapper.intsert(community);
    return "redirect:/community";
    }
        @RequestMapping("/dels")
        public String dels(int c_id){
            communityMapper.delById(c_id);
            return "redirect:/community";
        }
    @RequestMapping("/saves")
    public String saves(Comms comms){
        commsMapper.intsert(comms);
        return "redirect:/community";
    }


}
