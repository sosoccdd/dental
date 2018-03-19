package com.kh.dental.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.kh.dental.mypage.model.service.MypageService;
import com.kh.dental.mypage.model.vo.CRlist;
import com.kh.dental.mypage.model.vo.StarPoint;

/**
 * Servlet implementation class SelectCRServlet
 */
@WebServlet("/selectCR.mp")
public class SelectCRServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectCRServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Rid = request.getParameter("Rid");
	
		System.out.println("알알알아랑랑라아랑라알아라알알            :::"+ Rid);
	
		MypageService ms = new MypageService();
		
		ArrayList<CRlist> list = new ArrayList<CRlist>();
		
		list = ms.selectCRlist(Rid);
		request.setAttribute("list", list);
		System.out.println();
		JSONArray result = new JSONArray();
		JSONObject starInfo=null;
		
		for(CRlist cr : list){
			starInfo = new JSONObject();
			
			starInfo.put("hosName", cr.getHosName());
			starInfo.put("r_date", cr.getR_date());
			starInfo.put("r_time", cr.getR_time());
			starInfo.put("etc", cr.getEtc());
			
			result.add(starInfo);
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		System.out.println("cascasc ++++++ : " + result);
		new Gson().toJson(result, response.getWriter());
	
	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
