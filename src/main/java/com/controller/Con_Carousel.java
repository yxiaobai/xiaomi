package com.controller;

import com.entity.Carousel;
import com.mapper.CarouselMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class Con_Carousel {
    @Autowired
    private CarouselMapper carouselMapper;

    @RequestMapping("/carouselAdmin")
    public ModelAndView xm_admin() {
        ModelAndView mv = new ModelAndView("/admin/carousel_admin");
        mv.addObject("carouselshow", carouselMapper.carousel_show());
        return mv;
    }
    @RequestMapping("/carousel_save")
    public String insert(@RequestParam("img") CommonsMultipartFile f, HttpServletResponse resp, HttpServletRequest req) throws IOException {
        String path = "img/carousel/";
        String p = req.getServletContext().getRealPath(path);
        File ff = new File(p);
        if(!ff.exists()){
            ff.mkdirs();
        }
        //上传文件到指定目录中
        long size = f.getSize();
        String name = f.getOriginalFilename();
        String ext = name.substring(name.lastIndexOf(".")).toLowerCase();
        String nn = new SimpleDateFormat("yyyyMMddHHmmssS").format(new Date());
        if(ext.equalsIgnoreCase(".jpg") || ext.equalsIgnoreCase(".png")){
            f.transferTo(new File(p,nn+ext));
        }
        String title=req.getParameter("title");
        String img=nn+ext;
        String url=req.getParameter("url");
        String flag=req.getParameter("flag");
        carouselMapper.carousel_insert(title,img,url,flag);
            return "redirect:/carouselAdmin";
    }

    @RequestMapping("/carousel_del")
    public String del(int id) {
       // System.out.println();
        carouselMapper.carousel_del(id);
        return "redirect:/carouselAdmin";
    }
    @RequestMapping("/carousel_update")
    public String update(Carousel carousel) {
        System.out.println(carousel.toString());
        carouselMapper.carousel_update(carousel);
        return "redirect:/carouselAdmin";
    }

    @RequestMapping("/carousel_updateVal")
    public ModelAndView updateVal(int id){
        ModelAndView mv=new ModelAndView("admin/carousel_update");
        mv.addObject("updateVal",carouselMapper.carousel_selectID(id));
        return mv;
    }
    @RequestMapping("/carousel_updateFlag")
    public String updateFlag(int id,String flag,HttpServletRequest req){
        id=Integer.valueOf(req.getParameter("id"));
        flag=req.getParameter("flag");
        carouselMapper.carousel_updateFlag(id,flag);
        return "redirect:/carouselAdmin";
    }
}
