package com.kh.dental.searchclinic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.kh.dental.searchclinic.model.service.SearchClinicService;
import com.kh.dental.searchclinic.model.vo.SearchClinic;

/**
 * Servlet implementation class SelectSearchClinicServlet
 */
@WebServlet("/selectsearch.sc")
public class SelectSearchClinicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectSearchClinicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sido = request.getParameter("sido");
		String gugun = request.getParameter("gugun");
		String dong = request.getParameter("dong");
		
		System.out.println(sido+","+gugun+","+dong);
		
		ArrayList<SearchClinic> list = new SearchClinicService().selectaddress(sido, gugun, dong);
		
		//페이지
		System.out.println("servlet:"+list);
		System.out.println("listsize()_"+list.size());
		if (list.size()< 6) {
			list = new SearchClinicService().selectgugun(sido, gugun);
			System.out.println("listsize()_222222"+list.size());
			if (list.size()< 6) {
				list = new SearchClinicService().selectsido(sido);
			}
		}
		request.setAttribute("list", list);
		JSONArray list1 = new JSONArray();
		JSONObject result = null;
		
		for(SearchClinic sc:list) {
			result = new JSONObject();
			result.put("yadm_nm", sc.getYadm_nm());
			result.put("addr", sc.getAddr());
			result.put("telno", sc.getTelno());
			result.put("x_pos", sc.getX_pos());
			result.put("y_pos", sc.getY_pos());
			result.put("status", sc.getStatus());
			
			list1.add(result);
			
		}
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(list1);
		
		out.flush();
		out.close();
		
		//JSONArray jsonArray=JSONArray.fromObject(list);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
