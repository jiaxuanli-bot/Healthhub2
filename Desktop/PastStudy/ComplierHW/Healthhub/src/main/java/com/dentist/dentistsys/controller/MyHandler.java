package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import javax.websocket.OnOpen;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class MyHandler extends TextWebSocketHandler {
    private static final ArrayList<WebSocketSession> users;//这个会出现性能问题，最好用Map来存储，key用userid
    static {
        users = new ArrayList<WebSocketSession>();
    }
    @OnOpen
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        // TODO Auto-generated method stub
        System.out.println("connect to the websocket success......当前数量:"+users.size());
        users.add(session);
        //这块会实现自己业务，比如，当用户登录后，会把离线消息推送给用户
        //TextMessage returnMessage = new TextMessage("你将收到的离线");
        //session.sendMessage(returnMessage);
    }
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String payload = message.getPayload();
        Map<String, String> map = JSONObject.parseObject(payload, HashMap.class);
        String name = map.get("name");
        System.out.println(name);
        System.out.println("=====接受到的数据"+payload);
        for (WebSocketSession user : users) {
            try {
                System.out.println(user.getUri());
                System.out.println("ws://127.0.0.1:8089/myHandler/ID="+name);
                System.out.println(user.getUri().toString().equals("ws://127.0.0.1:8089/myHandler/ID="+name));
                System.out.println();
                if (user.isOpen()) {
                    if (user.getUri().toString().equals("ws://127.0.0.1:8089/myHandler/ID="+name)){
                    user.sendMessage(message);}
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
