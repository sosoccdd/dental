package com.kh.dental.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.kh.dental.mypage.model.service.MypageService;

@WebServlet("/updatePwd.me")
public class UpdatePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdatePwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getSession().getId();
		String pwd = request.getParameter("pwd");
		
		int result= 0;
		
		result = new MypageService().updatePwd(userId, pwd);
		
		JSONObject js = new JSONObject();
		js.put("result", result);
		
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(js.toJSONString());
		
		out.flush();
		out.close();
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
