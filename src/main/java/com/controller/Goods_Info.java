package com.controller;

import com.entity.GoodsInfo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.GoodsInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
public class Goods_Info {
    @Autowired
    private GoodsInfoMapper goodsInfoMapper;
    @RequestMapping("/admin")
    public ModelAndView xm_admin(ModelAndView mv, @RequestParam(required=true,defaultValue="1") Integer page,
                                 @RequestParam(required=false,defaultValue="5") Integer pageSize){
       // ModelAndView mv = new ModelAndView("/admin/xm_admin");
        PageHelper.startPage(page,pageSize);
        List<GoodsInfo> list = goodsInfoMapper.query();
        PageInfo<GoodsInfo> p = new PageInfo<GoodsInfo>(list);
        mv.addObject("commall",list);
        mv.addObject("page",p);
        mv.setViewName("/admin/xm_admin");
        mv.addObject("showall",list);
        return mv;
    }

    @RequestMapping("/save")
    public String insert(@RequestParam("goodsImg") CommonsMultipartFile f,HttpServletRequest req) throws IOException {
        String path = "img/goodsInfo/";
        String p = req.getServletContext().getRealPath(path);
        File ff = new File(p);
        if(!ff.exists()){
            ff.mkdirs();
        }
        //上传文件到指定目录中
        //long size = f.getSize();
        String name = f.getOriginalFilename();
        String ext = name.substring(name.lastIndexOf(".")).toLowerCase();
        String nn = new SimpleDateFormat("yyyyMMddHHmmssS").format(new Date());
        if(ext.equalsIgnoreCase(".jpg") || ext.equalsIgnoreCase(".png")){
            f.transferTo(new File(p,nn+ext));
        }
        int c_ID=Integer.parseInt(req.getParameter("c_ID"));
        String goodsName=req.getParameter("goodsName");
        String goodsIntroduce=req.getParameter("goodsIntroduce");
        String service=req.getParameter("service");
        String goodsImg=nn+ext;
        String goodsUrl=req.getParameter("goodsUrl");
        double marketPrice=Double.parseDouble(req.getParameter("marketPrice"));
        int isNew=Integer.parseInt(req.getParameter("isNew"));
        int discount=Integer.parseInt(req.getParameter("discount"));
        String flag=req.getParameter("flag");
        int class_cId=Integer.parseInt(req.getParameter("class_cId"));
        goodsInfoMapper.goodsInfo_insert(c_ID,goodsName,goodsIntroduce,service,goodsImg,goodsUrl,marketPrice,isNew,discount,flag,class_cId);
        return "redirect:/admin";
    }
    @RequestMapping("/del")
    public String del(int goodsID){
        goodsInfoMapper.goodsInfo_deleteById(goodsID);
        return "redirect:/admin";
    }

    @RequestMapping("/update")
    public String update(GoodsInfo goodsInfo){
        goodsInfoMapper.goodsInfo_update(goodsInfo);
        return  "redirect:/admin";
    }

    @RequestMapping("/goods_updateById")
    public ModelAndView updateById(int goodsID){
        ModelAndView mv =new ModelAndView("admin/xm_update");
        mv.addObject("updateById",goodsInfoMapper.goodsInfo_updateById(goodsID));
        return mv;
    }
}
