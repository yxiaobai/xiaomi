package utils;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UpFile {
    public static String upFileImg(CommonsMultipartFile url, HttpServletRequest req) {
        String path = "img/goodsInfo/";
        String p = req.getServletContext().getRealPath(path);
        File ff = new File(p);
        if(!ff.exists()){
            ff.mkdirs();
        }
        String name = url.getOriginalFilename();
        String ext = name.substring(name.lastIndexOf(".")).toLowerCase();
        String nn = new SimpleDateFormat("yyyyMMddHHmmssS").format(new Date());
        try {
        if(ext.equalsIgnoreCase(".jpg") || ext.equalsIgnoreCase(".png")){
            url.transferTo(new File(p,nn+ext));
        }
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
        return nn+ext;
    }
}
