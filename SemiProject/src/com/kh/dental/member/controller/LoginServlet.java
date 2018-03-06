package com.kh.dental.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dental.member.model.service.MemberService;
import com.kh.dental.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mId = request.getParameter("mId");
		String mPwd = request.getParameter("mPwd");
		String mType = request.getParameter("mType");
		
	/*	System.out.println("아이디 : " + mId);
		System.out.println("비밀번호 : " + mPwd);
		System.out.println("회원종류 : " + mType);*/
		
		//일반회원
		if(mType.equals("G")) {
			Member loginUser = new MemberService().GloginCheck(mId, mPwd);
			
			if(loginUser != null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				
				response.sendRedirect("index.jsp");
			} else {
				request.setAttribute("msg", "올바르지 않은 로그인 정보입니다. 다시 입력해 주세요.");
			}
		
		//의사회원
		} else if(mType.equals("D")) {
/*			Member loginUser = new MemberService().DloginCheck(mId, mPwd, mType);
			
			if(loginUser != null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				
				response.sendRedirect("index.jsp");
			} else {
				request.setAttribute("msg", "올바르지 않은 로그인 정보입니다. 다시 입력해 주세요.");
			}
			*/
		//치과회원
		} else {
	/*		Member loginUser = new MemberService().CloginCheck(mId, mPwd);
			
			if(loginUser != null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				
				response.sendRedirect("index.jsp");
			} else {
				request.setAttribute("msg", "올바르지 않은 로그인 정보입니다. 다시 입력해 주세요.");
			}*/
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
