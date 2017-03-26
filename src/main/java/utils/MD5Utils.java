package utils;
import org.springframework.util.StringUtils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5加密 16位 32位
 *
 * @author zhanglingsi
 *         createTime: 2016/11/13 18:39
 */
public class MD5Utils {

    private static final String SALT_VAL = "oisyadfuas98769834>!#$%?";

    private final static char[] hexDigits = {'0', '1', '2', '3', '4', '5',
            '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static String bytesToHex(byte[] bytes) {
        StringBuffer sb = new StringBuffer();
        int t;
        for (int i = 0; i < 16; i++) {
            t = bytes[i];
            if (t < 0)
                t += 256;
            sb.append(hexDigits[(t >>> 4)]);
            sb.append(hexDigits[(t % 16)]);
        }
        return sb.toString();
    }

    public static String Md5For16(String input) throws Exception {
        return code(input, 16);
    }

    public static String code(String input, int bit) throws Exception {
        try {
            MessageDigest md = MessageDigest.getInstance(System.getProperty(
                    "MD5.algorithm", "MD5"));
            if (bit == 16)
                return bytesToHex(md.digest(input.getBytes("utf-8")))
                        .substring(8, 24);
            return bytesToHex(md.digest(input.getBytes("utf-8")));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            throw new Exception("Could not found MD5 algorithm.", e);
        }
    }

    public static String md5_3(String b) throws Exception {
        MessageDigest md = MessageDigest.getInstance(System.getProperty(
                "MD5.algorithm", "MD5"));
        byte[] a = md.digest(b.getBytes());
        a = md.digest(a);
        a = md.digest(a);

        return bytesToHex(a);
    }

    /**
     * @param origin
     * @return
     * @author shenbobo
     */
    public static String MD5Encode(String origin) {
        return MD5Encode(origin, null);
    }

    /**
     * MD5添加
     *
     * @param origin
     * @param charSetName
     * @return
     * @author shenbobo
     */
    public static String MD5Encode(String origin, String charSetName) {
        String resultString = null;
        try {
            resultString = origin;
            MessageDigest md = MessageDigest.getInstance("MD5");
            if (StringUtils.isEmpty(charSetName)) {
                resultString = bytesToHex(md.digest(
                        resultString.getBytes()));
            } else {
                resultString = bytesToHex(md.digest(
                        resultString.getBytes(charSetName)));
            }
        } catch (Exception localException) {
        }
        return resultString;
    }

    public final static String MD5For32(String s) {
        char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public static void main(String[] args) throws Exception{

        //注册

        String str = "123456";

        System.out.println(MD5Utils.MD5For32(str+SALT_VAL));
        System.out.printf(MD5Utils.Md5For16(str));
    }
}