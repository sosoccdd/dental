package com.kh.dental.searchclinic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.kh.dental.searchclinic.model.service.SearchRService;

/**
 * Servlet implementation class UpdateRstatusSevlet
 */
@WebServlet("/updateRstatus.mp")
public class UpdateRstatusSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateRstatusSevlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String bno = request.getParameter("rno");
		
		System.out.println("R업데이트 bno : " + bno);
		
		SearchRService sr = new SearchRService();
		
		int result = sr.updateRstatus(bno);
		
		String page = "";
		
		if(result >0){
			page = "/selectR.mp";
		}else{
			page = "/views/common/error.jsp";
		}
		
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
