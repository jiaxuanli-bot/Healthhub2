package com.dentist.dentistsys;

import javax.websocket.Endpoint;
import javax.websocket.server.ServerApplicationConfig;
import javax.websocket.server.ServerEndpointConfig;
import java.util.Set;

public class WebSocketConfig implements ServerApplicationConfig {


    /**
     * 注解方式
     * 扫描src下所有类@ServerEndPoint注解的类。类似于
     */
    public Set<ServerEndpointConfig> getEndpointConfigs(
            Set<Class<? extends Endpoint>> scanned) {
        return null;
    }

    //注解的方式
    public Set<Class<?>>getAnnotatedEndpointClasses(Set<Class<?>> scanned) {
        System.err.println("START CONFIG:" + scanned.size());
        return scanned;
    }
}

