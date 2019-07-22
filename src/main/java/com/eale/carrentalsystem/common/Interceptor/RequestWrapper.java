package com.eale.carrentalsystem.common.Interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ReadListener;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.io.*;
import java.nio.charset.Charset;

/**
 * Created by HZH
 * 包装HttpServletRequest对象,让输入流可以重复读取
 * data 2019/7/19
 */
public class RequestWrapper extends HttpServletRequestWrapper {

    private static Logger logger = LoggerFactory.getLogger(RequestWrapper.class);

    private final byte[] body;

    public RequestWrapper(HttpServletRequest request) {
        super(request);

        String bodyStr = getBodyString(request);
        body = bodyStr.getBytes(Charset.defaultCharset());
    }

    public String getBodyString(HttpServletRequest request) {
        InputStream inputStream = null ;
        StringBuilder builder = new StringBuilder();
        String str = null;
        try {
            inputStream = request.getInputStream();
            byte[] bytes = new byte[4096];
            int read = inputStream.read(bytes);
            while ( read != -1){
                str=new String(bytes,0,read);
                System.out.println(str.toLowerCase());
                builder.append(str);
                read = inputStream.read(bytes);
            }
            logger.info("Access Filter header : {}",builder.toString());
        }catch (IOException e){
            logger.error("read request failed:",e);
        }finally {
            try {
                inputStream.close();
            } catch (IOException e) {
                logger.error("close inputstream failed ",e);
            }
        }
        return builder.toString();
    }

    @Override
    public ServletInputStream getInputStream() throws IOException{
        final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(body);
        ServletInputStream servletInputStream = new ServletInputStream() {
            @Override
            public boolean isFinished() {
                return false;
            }

            @Override
            public boolean isReady() {
                return false;
            }

            @Override
            public void setReadListener(ReadListener readListener) {

            }

            @Override
            public int read() throws IOException {
                return byteArrayInputStream.read();
            }
        };
        return servletInputStream;
    }

    @Override
    public BufferedReader getReader()throws IOException{
        return new BufferedReader(new InputStreamReader(this.getInputStream()));
    }

    public byte[] getBody() {
        return body;
    }
}
