package com.cloudo.hj.util;

/**
 * Created by cloudpj on 17/6/7.
 */
public class WeiXinUtil {
    public static String CODE="code";
    public static String APP_ID = "wxf7c9887f76a51514";
    public static String APP_SECRET="ecf41c154620de1609fe208d081226b0";

    public static String createOpenUrl(String code){
        String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+APP_ID+"&secret="+APP_SECRET
                +"&"+code+"&grant_type=authorization_code";

        return url;
    }


}
