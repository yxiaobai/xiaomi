import com.entity.GoodsInfo;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Administrator on 2017/3/14 0014.
 */
public class demos {
    @Test
    public void tt(){
        ClassPathXmlApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");
        GoodsInfo goodsInfo = bf.getBean("goodInfo", GoodsInfo.class);

    }

}
