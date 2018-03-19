package com.kh.dental.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dental.admin.model.service.AdminService;
import com.kh.dental.member.model.vo.Member;

/**
 * Servlet implementation class UpdateCmemberServlet
 */
@WebServlet("/UpdateCmember.ad")
public class UpdateCmemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCmemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		
		Member m=new Member();
		m.setmId(mId);
		m.setmName(mName);
		
		int result = new AdminService().UpdateCmember(m);
		
		if(result > 0){
			HttpSession session = request.getSession();
			response.sendRedirect("/semi/Cmember.ad");
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
