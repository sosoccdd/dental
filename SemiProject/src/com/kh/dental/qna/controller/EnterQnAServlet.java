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

import com.kh.dental.qna.model.service.QnAService;
import com.kh.dental.qna.model.vo.QnA;
import com.kh.dental.qna.model.vo.QnAPageInfo;

/**
 * Servlet implementation class EnterQnAServlet
 */
@WebServlet("/EnterQnAServlet")
public class EnterQnAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnterQnAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnAService qs = new QnAService(); 
		int totalPage;
		int pageNum;
		int currentPage;
		int startPage;
		int lastPage;
		
		
		currentPage=1;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		int listCount= qs.getListCount();
		pageNum=5;
		
		totalPage=(int)((double)listCount/pageNum+0.9);
		startPage= ((int)((double)currentPage/pageNum+0.9)-1)*pageNum +1;
		
		
		lastPage=startPage+pageNum-1;
		
		//시작페이지 마지막페이지
		
		if(lastPage > totalPage) {
			
			lastPage = totalPage;
			
		}
		System.out.println(totalPage);
		QnAPageInfo qpi = new QnAPageInfo(listCount,totalPage,pageNum,currentPage,startPage,lastPage);
		//게시판관련
		ArrayList<QnA> list1 = new QnAService().selectQnAList(currentPage,pageNum);
		//이미지관련(의사 프로필사진)
		ArrayList<HashMap<String,Object>> list2= new QnAService().selectQnAImage();
		//의사정보 
		ArrayList<HashMap<String,Object>> list3= new QnAService().selectDocInfo();
 		
		String page="";
		
		if(list1 != null){
			
			page = "views/QnA/QnAView.jsp";
			request.setAttribute("list1", list1);
			request.setAttribute("list2", list2);
			request.setAttribute("list3", list3);
			
			request.setAttribute("qpi", qpi);
			}else{
			
			page ="views/QnA/GoTo404.jsp";
			
		}
		System.out.println("list1 :"+list1);
		System.out.println("list2 :"+list2);
		System.out.println("list3 :"+list3);
		RequestDispatcher view  = request.getRequestDispatcher(page);
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
