import com.controller.Commes;
import com.controller.Goods;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2017/2/23.
 */
public class Demo {
    @Test
    public void tt() {
        ClassPathXmlApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");
        Goods goods = bf.getBean("goods", Goods.class);
        Commes c = bf.getBean("commes", Commes.class);
        ModelAndView mv = c.testes(1);
        System.out.println(mv);
       /* List<Integer> li=goods.aa();
        List<GoodsInfo> ll=new ArrayList<GoodsInfo>();
        for(Integer i:li){
            ll.add(goods.aaa(i));
        }
        System.out.println(ll.toString());*/
       /* List<GoodsInfo> li=s.selectList("queryAll");
        System.out.println(li.toString());*/
    }
@Test
    public void aaaaaaa(){
    System.out.println("78ce68a5-cca7-47fd-ac69-f42e69b21bfc".length());
    }
}
