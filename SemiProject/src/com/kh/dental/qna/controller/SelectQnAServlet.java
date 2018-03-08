package com.kh.dental.qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.qna.model.service.QnAService;
import com.kh.dental.qna.model.vo.QnA;
import com.kh.dental.qna.model.vo.QnAPageInfo;

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
	
		
		QnAService qs = new QnAService(); 
		int listCount= qs.getListCount();
		int totalPage;
		int pageNum=10;
		int currentPage=1;
		int startPage;
		int lastPage;
		totalPage=(int)Math.ceil((listCount/pageNum));

		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		startPage= (int)(currentPage/pageNum-0.1)*pageNum+1;
		lastPage=startPage+pageNum-1;
		
		//시작페이지 마지막페이지
		
		if(lastPage > totalPage) {
			
			lastPage = totalPage;
			
		}
		
		QnAPageInfo qpi = new QnAPageInfo(listCount,totalPage,pageNum,currentPage,startPage,lastPage);
		
		ArrayList<QnA> list = new QnAService().selectList(currentPage,pageNum);
		
		String page = "";
		
		if(list !=null) {
			
			page ="views/QnA/QnAView.jsp";
			request.setAttribute("list", list);
			request.setAttribute("qpi", qpi);
		}else {
			
			page="";
			//에러페이지 없음
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
