package com.kh.dental.searchclinic.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.searchclinic.model.service.SearchClinicService;
import com.kh.dental.searchclinic.model.vo.Res;

/**
 * Servlet implementation class InsertResServlet
 */
@WebServlet("/insertRes.mp")
public class InsertResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertResServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("예약하기!!!!!!");
		
		String userNo = request.getParameter("userNo");
		String hosName = request.getParameter("hosName");
		String hosField = request.getParameter("hosField");
		String rTime = request.getParameter("rTime");
		String rEtc = request.getParameter("rEtc");
		System.out.println("박명" + hosName);
		SearchClinicService sc = new SearchClinicService();
		
		String insertHnm = sc.selectHnm(hosName);
		
		Res rs = new Res();

		rs.setM_no(Integer.parseInt(userNo));
		rs.setF_num(Integer.parseInt(hosField));
		rs.setEtc(rEtc);
		rs.setR_time(rTime);
		rs.setYkiho_enc(insertHnm);
		System.out.println("12d12dqd" + rs);
		
		int result = sc.insertRes(rs);
		
		if(result > 0){
			System.out.println("저장");	
		}else{
			System.out.println("실패");
		}
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		
		
			
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
