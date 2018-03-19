package com.kh.dental.mypage.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import com.kh.dental.member.model.vo.Member;
=======
>>>>>>> ab094e497c98397a2e734bc7a3dd1d6b0d719c64
import com.kh.dental.mypage.model.service.MypageService;
import com.kh.dental.mypage.model.vo.*;
import com.kh.dental.mypage.model.vo.Dual;

/**
 * Servlet implementation class InsertDualServlet
 */
@WebServlet("/insertDual.mp")
public class InsertDualServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertDualServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
<<<<<<< HEAD
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		String type= loginUser.getType();
		
		String userId = loginUser.getmId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
=======
		String userId = request.getParameter("userId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		/*System.out.println(userId);
		System.out.println(title);
		System.out.println(content);*/
>>>>>>> ab094e497c98397a2e734bc7a3dd1d6b0d719c64
		
		Dual d = new Dual();
		d.setBwriter(userId);
		d.setBtitle(title);
		d.setBcontent(content);
		
		int result = new MypageService().insertDual(d);
		
		String page = "";
		
		if(result>0){
<<<<<<< HEAD
			if(type.equals("N")){
				page = "/selectList.mp";
			}else if(type.equals("D")){
				page = "/selectListD.mp";
			}else{
				page = "/selectR.mp";
			}
=======
			page = "/selectList.mp";
>>>>>>> ab094e497c98397a2e734bc7a3dd1d6b0d719c64
			
		}else{
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시판 조회 실패!");
		}
		
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
