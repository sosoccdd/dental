package com.kh.dental.searchclinic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.searchclinic.model.service.SearchRService;
import com.kh.dental.searchclinic.model.vo.Cdetail;

/**
 * Servlet implementation class SelectClinicDetailServlet
 */
@WebServlet("/selectCdetail.cd")
public class SelectClinicDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectClinicDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tel = request.getParameter("tel");
		System.out.println(tel);
		Cdetail cd = null;
		
		SearchRService sr = new SearchRService();
		
		cd = sr.selectCdetail(tel);
		
		
		
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
