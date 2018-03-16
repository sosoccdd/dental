package com.kh.dental.event.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.common.Attachment;
import com.kh.dental.event.model.service.EventService;
import com.kh.dental.event.model.vo.Event;

/**
 * Servlet implementation class SelectOneEventServlet
 */
@WebServlet("/selectOne.ev")
public class SelectOneEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneEventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println("SelectOneServlet num : " + num);
		
		HashMap<String, Object> hmap = new EventService().selectEventList(num);
		
		System.out.println(hmap);
		
		Event e = (Event)hmap.get("event");
		
		ArrayList<Attachment> fileList = (ArrayList<Attachment>)hmap.get("attachment");
		
		String page = "";
		if(hmap != null) {
			page = "views/event/EventDetail.jsp";
			request.setAttribute("e", e);
			request.setAttribute("fileList", fileList);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "사진 게시판 상세보기 실패");
			
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
