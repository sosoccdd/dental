package com.kh.dental.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dental.admin.model.service.AdminService;
import com.kh.dental.admin.model.vo.AdminEvent;

/**
 * Servlet implementation class UpdateAdminMoonSerblet
 */
@WebServlet("/UpdateMo.ad")
public class UpdateAdminMoonSerblet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdminMoonSerblet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String b_writer = request.getParameter("b_writer");
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		
		AdminEvent m=new AdminEvent();
		m.setB_writer(b_writer);
		m.setB_no(b_no);
		
		int result = new AdminService().UpdateHelp(m);
		
		if(result > 0){
			HttpSession session = request.getSession();
			response.sendRedirect("/semi/SelectMo.ad");
		} else {
			request.getRequestDispatcher("/semi").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
