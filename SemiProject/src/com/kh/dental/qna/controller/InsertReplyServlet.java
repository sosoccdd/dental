package com.kh.dental.qna.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import com.kh.dental.member.model.vo.Member;
import com.kh.dental.qna.model.service.QnAService;
import com.kh.dental.qna.model.vo.QnA;

/**
 * Servlet implementation class InsertReplyServlet
 */
@WebServlet("/InsertReply")
public class InsertReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("들어오냐");
		String content = request.getParameter("content");
		int tno= Integer.parseInt(request.getParameter("tNo"));
		
		HttpSession session = request.getSession();
		
		Member m = new Member();
		m=(Member)session.getAttribute("loginUser");
		
		int result = new QnAService().insertReply(content,m,tno);
		
		QnA reply = new QnAService().getReply(tno);
		
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		new Gson().toJson(reply,response.getWriter());
		
		System.out.println(reply);	
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
