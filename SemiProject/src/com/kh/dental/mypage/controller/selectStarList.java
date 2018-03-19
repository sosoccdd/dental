package com.kh.dental.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.kh.dental.member.model.vo.Member;
import com.kh.dental.mypage.model.service.MypageService;
import com.kh.dental.mypage.model.vo.StarPoint;

/**
 * Servlet implementation class selectStarList
 */
@WebServlet("/starcall.mp")
public class selectStarList extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public selectStarList() {
        super();
        // TODO Auto-generated constructor stub
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      ArrayList<StarPoint> list =null;
      Member loginUser = (Member)request.getSession().getAttribute("loginUser");
      String userid = loginUser.getmId();
      list = new MypageService().selectStar(userid);
      request.setAttribute("list", list);
      JSONArray result = new JSONArray();
      JSONObject starInfo=null;
      
      System.out.println("control" +list);
      System.out.println(list.size());
      for(StarPoint sp : list){
         starInfo = new JSONObject();
         
         starInfo.put("hosName", sp.getYkiho_enc());
         starInfo.put("date", sp.getBdate());
         starInfo.put("starpt", sp.getStartpt());
         
         result.add(starInfo);
      }
      
      JSONObject ListL = new JSONObject();
      ListL.put("listS", list.size());
      result.add(ListL);
      
      response.setContentType("application/json");
      response.setCharacterEncoding("UTF-8");
      System.out.println("cascasc ++++++ : " + result);
      new Gson().toJson(result, response.getWriter());
      
      /*PrintWriter out = response.getWriter();
      out.print(result.toJSONString());
      
      out.flush();
      out.close();*/
   
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}