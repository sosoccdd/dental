package com.kh.dental.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.member.model.service.MemberService;
import com.kh.dental.member.model.vo.Member;

/**
 * Servlet implementation class InsertMemberNServlet
 */
@WebServlet("/insertN.me")
public class InsertMemberNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberNServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라메터 꺼내오기
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String mPwd = request.getParameter("mPwd");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String type = "N";
		
		//member 객체 생성
		Member m = new Member();
		
		//setter로 값 전달
		m.setmId(mId);
		m.setmName(mName);
		m.setmPwd(mPwd);
		m.setAddress(address);
		m.setPhone(phone);
		m.setGender(gender);
		m.setType(type);
		
		//서비스로 전달
		int result = new MemberService().insertMember(m);
		
		//페이지 연결
		String page = "";
		if(result > 0) {
			page = "views/member/Success.jsp";
		} else {
			request.setAttribute("msg", "회원가입이 실패하였습니다.");
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
package com.kh.dental.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.member.model.service.MemberService;
import com.kh.dental.member.model.vo.Member;

/**
 * Servlet implementation class InsertMemberNServlet
 */
@WebServlet("/insertN.me")
public class InsertMemberNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberNServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라메터 꺼내오기
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String mPwd = request.getParameter("mPwd");
		
		String addr = request.getParameter("address");
		String addr2 = request.getParameter("address2");

		String address = addr + ", " + addr2;

		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String type = "N";
		
		//member 객체 생성
		Member m = new Member();
		
		//setter로 값 전달
		m.setmId(mId);
		m.setmName(mName);
		m.setmPwd(mPwd);
		m.setAddress(address);
		m.setPhone(phone);
		m.setGender(gender);
		m.setType(type);
		
		//서비스로 전달
		int result = new MemberService().insertMember(m);
		
		//페이지 연결
		String page = "";
		if(result > 0) {
			page = "views/member/Success.jsp";
		} else {
			request.setAttribute("msg", "회원가입이 실패하였습니다.");
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
