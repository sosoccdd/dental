package com.kh.dental.qna.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dental.member.model.vo.Member;
import com.kh.dental.qna.model.vo.QnA;

/**
 * Servlet implementation class EnterAnswerServlet
 */
@WebServlet("/EnterAnswerServlet")
public class EnterAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnterAnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		System.out.println("넘어왔나?");
		QnA q = new QnA();
		q.setbNo(Integer.parseInt(request.getParameter("bNo")));
		q.setbTitle(request.getParameter("question")); 
		q.setbContent(request.getParameter("content"));
		q.settNo(Integer.parseInt(request.getParameter("tNo")));
		q.setbDate(Date.valueOf(request.getParameter("date")));
		System.out.println("q는뭔가요?: "+q);
		String page= "views/QnA/QnAForm.jsp";
		request.setAttribute("q", q);
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
