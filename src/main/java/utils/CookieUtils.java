package utils;

import com.entity.GoodsInfo;
import com.entity.ShoppingCar;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

public class CookieUtils {
    /**
     * 设置cookie
     * @param response
     * @param name  cookie名字
     * @param value cookie值
     * @param maxAge cookie生命周期  以秒为单位
     */
    public static void addCookie(HttpServletResponse response, String name, String value, int maxAge){
        Cookie cookie = new Cookie(name,value);
        cookie.setPath("/");
        if(maxAge>0)  cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
    }

    /**
     * 获取Cookie的内容--商品编号
     * @param request
     * @return 商品编号List集合
     */
    public static List<Integer> queryAllCookie(HttpServletRequest request){
        List<Integer> li = new ArrayList<Integer>();
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                try {
                    if(cookie.getName().length()==36) {
                        int goodsID = Integer.valueOf(cookie.getValue());
                        li.add(goodsID);
                    }
                } catch (Exception e) {
                    continue;
                }
            }
        }
        Set set = new HashSet();
        List<Integer> newList = new ArrayList<Integer>();
        for (Integer cd:li) {
            if(set.add(cd)){
                newList.add(cd);
            }
        }
        return newList;
    }
    /**
     * 将cookie封装到Map里面
     * @param request
     * @return
     */
    private static Map<String,Cookie> ReadCookieMap(HttpServletRequest request){
        Map<String,Cookie> cookieMap = new HashMap<String,Cookie>();
        Cookie[] cookies = request.getCookies();
        if(null!=cookies){
            for(Cookie cookie : cookies){
                cookieMap.put(cookie.getName(), cookie);
            }
        }
        return cookieMap;
    }
    /**
     * 根据名字获取cookie
     * @param request
     * @param name cookie名字
     * @return
     */
    public static Cookie getCookieByName(HttpServletRequest request,String name){
        Map<String,Cookie> cookieMap = ReadCookieMap(request);
        if(cookieMap.containsKey(name)){
            Cookie cookie = (Cookie)cookieMap.get(name);
            return cookie;
        }else{
            return null;
        }
    }

    /**
     * 相同替换
     * @param shoppingCar
     * @param goodsInfo
     * @return
     */
    public static ShoppingCar replaceDao(ShoppingCar shoppingCar, GoodsInfo goodsInfo){
        shoppingCar.setGoodsID(goodsInfo.getGoodsID());
        shoppingCar.setGoodsName(goodsInfo.getGoodsName());
        shoppingCar.setGoodsImg(goodsInfo.getGoodsImg());
        shoppingCar.setMarketPrice(goodsInfo.getMarketPrice());
        return shoppingCar;
    }
}
