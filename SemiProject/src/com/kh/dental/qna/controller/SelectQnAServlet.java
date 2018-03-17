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
		
		int totalPage1;
		int contentNum1=5;
		int currentPage;
		int startPage1;
		int lastPage1;
		
		int totalPage2;
		int pageNum2=10;
		int startPage2;
		int lastPage2;
		
		currentPage =1;
		
		if(request.getParameter("currentPage")!=null){
			
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		
		
		
		
		
		
		HttpSession session =request.getSession();
		Member m= (Member)session.getAttribute("loginUser");
		
		QnA q = new QnA();

		q.setbCount(Integer.parseInt(request.getParameter("bCount")));
		q.setbNo(Integer.parseInt(request.getParameter("bno")));
		int refNum=q.getbNo();
		System.out.println("refNum:(q.gettNo) ="+refNum);
		System.out.println("refNum ="+refNum);
		System.out.println("q는"+q);
		
		
		
		QnA qContent = new QnAService().getQContent(m,q,currentPage,contentNum1);
//		번호 ,작성자 ,제목 , 절대번호, 작성날짜, 조회수, 제목 
		ArrayList<Attachment> qPic = new QnAService().getQPic(m,q);
//		질문의 사진
		ArrayList<HashMap<String,Object>> aContent = new QnAService().getDocInfo(q,currentPage,contentNum1);
//		답변의 의사정보 밑 컨텐츠 , 페이지네이션완
		ArrayList<Attachment> aPic = new QnAService().getAic(m,q);
//		답변의 사진정보 
		ArrayList<Attachment> dPhoto= new QnAService().getDPhoto(refNum);
//		의사의 프로필사진
		ArrayList<QnA> reply = new QnAService().getReplyPage(refNum,1,contentNum1);
//		답변의 답글 페이지네이션
		System.out.println("qContent :"+ qContent);
		System.out.println("qPic: "+qPic);
		String page = "";
		
		int answerNum = new QnAService().getAnsList(qContent.getbNo());
		totalPage1=(int)((double)answerNum/contentNum1+0.9);
		startPage1= ((int)((double)currentPage/contentNum1+0.9)-1)*contentNum1 +1;
		
		
		lastPage1=startPage1+contentNum1-1;
		
		int repNum = new QnAService().getRepNum(q.getbNo());
	
		QnAPageInfo ans = new QnAPageInfo(answerNum,totalPage1,contentNum1,currentPage,startPage1,lastPage1);
		QnAPageInfo rep = new QnAPageInfo(repNum,totalPage1,contentNum1,currentPage,startPage1,lastPage1);
		
		if(qContent !=null){
			
			page = "views/QnA/QnAList.jsp";
			request.setAttribute("qContent", qContent);
			request.setAttribute("aContent", aContent);
			request.setAttribute("aPic", aPic);
			request.setAttribute("dPhoto", dPhoto);
			request.setAttribute("reply", reply);
			request.setAttribute("ans", ans);
			request.setAttribute("rep", rep);
		
		}else{
			
			page="wewe";
			 
		}
		System.out.println("차례대로 qcontent부터");
		System.out.println("qContent"+qContent);
		System.out.println("aContent"+aContent);
		System.out.println("aPic"+aPic);
		System.out.println("dPhoto");
		System.out.println("reply");
		System.out.println("ans");
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
