package com.kh.dental.searchclinic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.kh.dental.searchclinic.model.service.SearchClinicService;
import com.kh.dental.searchclinic.model.vo.PageInfo;
import com.kh.dental.searchclinic.model.vo.SearchClinic;
import com.sun.org.apache.bcel.internal.generic.LUSHR;

/**
 * Servlet implementation class SelectSearchClinicServlet
 */
@WebServlet("/selectsearch.sc")
public class SelectSearchClinicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectSearchClinicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("들어는와??????");
		String sido = request.getParameter("sido");
		String gugun = request.getParameter("gugun");
		String dong = request.getParameter("dong");
		
		//페이징 처리 추가
		int currentPage;	//현재 페이지를 표시할 변수
		int limit;			//한 페이지에 게시글이 몇개 보여질 것인지
		int maxPage;		//전체 페이지에서 가장 마지막 페이지
		int startPage;		//한번에 표실될 페이지가 시작할 페이지
		int endPage;		//한번에 표시될 페이지가 끝나는 페이지
		int listCount;
		//게시판은 1 페이지부터 시작함
		currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		//한 페이지에 보여질 목록 갯수
		limit = 10;

		//전체 목록 갯수를 리턴받음
		SearchClinicService scs = new SearchClinicService();
		listCount = scs.getListCount(sido, gugun, dong);
		System.out.println("listCount : " + listCount);

		

		
		System.out.println(sido+","+gugun+","+dong);
		
		ArrayList<SearchClinic> list = new SearchClinicService().selectaddress(sido, gugun, dong);
		
		//페이지
		System.out.println("servlet:"+list);
		System.out.println("listsize()_"+list.size());
		System.out.println("listCount()_"+listCount);
		if (list.size()< 6) {
			list = new SearchClinicService().selectgugun(sido, gugun);
			listCount += scs.getListCountgugun(sido, gugun);
			System.out.println("listsize()22_"+list.size());
			System.out.println("listCount()22_"+listCount);
			if (list.size()< 6) {
				list = new SearchClinicService().selectsido(sido);
				listCount += scs.getListCountsido(sido);
				System.out.println("listsize()3333_"+list.size());
				System.out.println("listCount()3333_"+listCount);
			}
		}
		
		
		// 총페이지수 계산
		//예를 들면, 목록 수가 123개면 13페이지가 필요함
		//짜뚜리 목록이 최소 1개일때, 1page로 처리하기 위해서
		// 전체목록/ limit + 0.9
		maxPage = (int)((double)listCount / limit + 0.9);

		//현재페이지에 보여줄 시작 페이지 수(10개씩 보여지게 할 경우)
		//아래쪽 페이지 수가 10개씩 보여지게 한다면
		//1, 11, 21, 31...
		startPage = (int)(((double)currentPage / limit + 0.9) - 1) * limit + 1;

		//목록 아래 보여질 마지막 페이지 수 (10, 20, 30, ...)
		endPage = startPage + limit -1;
		if(maxPage < endPage){
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		JSONArray list1 = new JSONArray();
		JSONArray list2 = new JSONArray();
		JSONObject result = null;
			
		for(SearchClinic sc:list) {
			result = new JSONObject();
			result.put("yadm_nm", sc.getYadm_nm());
			result.put("ykiho_enc", sc.getYkiho_enc());
			result.put("addr", sc.getAddr());
			result.put("telno", sc.getTelno());
			result.put("x_pos", sc.getX_pos());
			result.put("y_pos", sc.getY_pos());
			result.put("status", sc.getStatus());
			
			list1.add(result);
			
		}
		

		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(list1);
		
		out.flush();
		out.close();
		
		//JSONArray jsonArray=JSONArray.fromObject(list);

		String page = "" ;
		if(pi != null){
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			session.setAttribute("pi", pi);
		} else {
			System.out.println("에러라고~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" );
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
