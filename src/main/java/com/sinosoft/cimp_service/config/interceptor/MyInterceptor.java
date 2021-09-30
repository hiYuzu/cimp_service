package com.sinosoft.cimp_service.config.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/15 10:16
 */
public class MyInterceptor implements HandlerInterceptor {

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String dataUri = "/data/";
        String requestUri = request.getRequestURI();
        if (!requestUri.startsWith(dataUri)) {
            return true;
        }

        String requestHost = request.getRemoteHost();

        boolean result = requestHost.startsWith("192.168.31.") || "0:0:0:0:0:0:0:1".equals(requestHost);
        if (result) {
            LOG.info("收到来自 " + requestHost + " 的请求：" + requestUri + "，请求已允许。");
        } else {
            LOG.warn("收到来自 " + requestHost + " 的请求：" + requestUri + "，请求已拒绝。");
        }
        return result;

//        LOG.info("收到来自 " + requestHost + " 的请求：" + requestUri + "，请求已允许。");
//        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
