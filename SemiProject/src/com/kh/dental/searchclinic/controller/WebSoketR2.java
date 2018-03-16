package com.kh.dental.searchclinic.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/broadcasting1")
public class WebSoketR2 {

   private static Map<String,Session> clients = new HashMap<String, Session>();
   private Session session;

   @OnMessage
   public void onMessage(String message, Session session) throws IOException {
      System.out.println(message);
      
      if(message.equals("예약")){
    	  session.getBasicRemote().sendText("완료");
      
      
      }
      
      if(message.equals("접수완료")){
    	  session.getBasicRemote().sendText("접수완료");
      }
      
      
      
      /*synchronized (clients) {
         // Iterate over the connected sessions
         // and broadcast the received message
         for (Session client : clients) {
            if (!client.equals(session)) {
               client.getBasicRemote().sendText(message);
            }
         }
      }*/
   }

   @OnOpen
   public void onOpen(Session session) {
      // Add session to the connected sessions set
      System.out.println(session);
      this.session = session;
      String JoinSession = session.getQueryString();
      
      clients.put(session.getId(), session);
      
      System.out.println(clients);
      
   }

   @OnClose
   public void onClose(Session session) {
      // Remove session from the connected sessions set
      clients.remove(session);
   }
}