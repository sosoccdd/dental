package com.kh.dental.qna.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.kh.dental.common.Attachment;
import com.kh.dental.member.model.vo.Member;
import com.kh.dental.qna.model.service.QnAService;
import com.kh.dental.qna.model.vo.QnA;
import com.kh.dental.qna.model.vo.QnAPageInfo;
import com.sun.java_cup.internal.runtime.Symbol;

/**
 * Servlet implementation class SelectQnAServlet
 */
@WebServlet("/SelectQnAServlet")
public class SelectQnAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectQnAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session =request.getSession();
		Member m= (Member)session.getAttribute("loginUser");
		
		QnA q = new QnA();
		q.settNo(Integer.parseInt(request.getParameter("tNo")));
		q.setbCount(Integer.parseInt(request.getParameter("bCount")));
		
		
		System.out.println("q는"+q);
		
		QnA qContent = new QnAService().getQContent(m,q);
//		번호 ,작성자 ,제목 , 절대번호, 작성날짜, 조회수, 제목
		ArrayList<Attachment> qPic = new QnAService().getQPic(m,q);
//		질문의 사진
		/*QnA aContent = new QnAService().getDocInfo(m,q);
		 답변의 사진과 정보 잠시 유보*/
		System.out.println("qContent :"+ qContent);
		System.out.println("qPic: "+qPic);
		String page = "";
		
		if(qContent!=null){
				
			page="views/QnA/QnAList.jsp";
			if(qPic.size()!=0){
			request.setAttribute("qContent", qContent);
			request.setAttribute("qPic", qPic);
			
			System.out.println("qContent "+qContent);
		
			
			}
			else{
				
				request.setAttribute("qContent", qContent);
				System.out.println("qContent"+qContent);
				
			}
			
		}else{
			
			page="404";
			System.out.println("views/QnA/QnAList.jsp");
		
		
		}
		System.out.println("list는 "+ qContent);
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
