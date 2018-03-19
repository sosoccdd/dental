package com.kh.dental.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dental.member.model.vo.Member;

/**
 * Servlet implementation class AgreeServlet
 */
@WebServlet("/agree.me")
public class AgreeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgreeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sName = request.getParameter("sName");
		String sGender = request.getParameter("sGender");
		String sMobileNo = request.getParameter("sMobileNo");
		String type = request.getParameter("chs_mem");
		Member joinUser = new Member();
		
		joinUser.setmName(sName);
		joinUser.setGender(sGender);
		joinUser.setPhone(sMobileNo);
		joinUser.setType(type);
		
		
		String page = "";
		if(type.equals("N")) {
			HttpSession session = request.getSession();
			session.setAttribute("joinUser", joinUser);
			page = "views/member/Njoin.jsp";
		} else if(type.equals("D")) {
			HttpSession session = request.getSession();
			session.setAttribute("joinUser", joinUser);
			page = "views/member/Djoin.jsp";
		}
		

		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
