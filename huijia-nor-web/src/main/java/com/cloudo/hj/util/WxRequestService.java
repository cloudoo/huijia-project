package com.cloudo.hj.util;

import com.cloudo.hj.vo.WxTokenInfo;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * Created by cloudoo on 2017/6/12.
 */
@Service
public class WxRequestService {

    protected final Logger logger = LoggerFactory.getLogger(getClass());
    private ObjectMapper mapper = new ObjectMapper();

    public String fetchOpenId(String wxCode){
        String openId = "";
         String url = WeiXinUtil.createOpenUrl(wxCode);;
         String reponse = get(url);
        try {

            WxTokenInfo wxTokenInfo = mapper.readValue(reponse,WxTokenInfo.class);
            openId = wxTokenInfo.getOpenid();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return openId;
    }
    /**
     * 发送 get请求
     */
    public String get(String url) {
        String content="";
        CloseableHttpClient httpclient = HttpClients.createDefault();
        try {
            // 创建httpget.
            HttpGet httpget = new HttpGet(url);
            System.out.println("executing request " + httpget.getURI());
            // 执行get请求.
            CloseableHttpResponse response = httpclient.execute(httpget);
            try {
                // 获取响应实体
                HttpEntity entity = response.getEntity();


                // 打印响应状态
               logger.info("请求weixin url:"+url);
               logger.info("response status: "+response.getStatusLine().toString());
                if (entity != null) {
                    // 打印响应内容长度
                    logger.info("Response content length: " + entity.getContentLength());
                    // 打印响应内容
                      content = EntityUtils.toString(entity);
                    logger.info("Response content: " + content);
                }

            } finally {
                response.close();
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            try {
                httpclient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return content;
    }


    public static void main(String[] args) {
        WxRequestService wxRequestService = new WxRequestService();
        wxRequestService.get("");
    }
}
