package com.kh.dental.searchclinic.controller;

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
import com.kh.dental.searchclinic.model.service.SearchRService;
import com.kh.dental.searchclinic.model.vo.Res;

@WebServlet("/selectHosR.mp")
public class SelectHosListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectHosListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String hosName = request.getParameter("hosName");
		
		System.out.println(hosName);
		
		ArrayList<Res> list = new ArrayList<Res>();
		
		list = new SearchRService().searchRList(hosName);
		JSONArray Alist = new JSONArray();
		JSONObject result = null;
		
		for(Res r : list){
			result = new JSONObject();
			
			result.put("rno", r.getRno());
			result.put("r_time", r.getR_time());
			result.put("r_status", r.getR_status());
			result.put("etc", r.getEtc());
			
			Alist.add(result);
		}
		
		System.out.println(Alist);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		new Gson().toJson(Alist, response.getWriter());
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
