package com.kh.dental.mypage.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.kh.dental.mypage.model.service.MypageService;
import com.kh.dental.mypage.model.vo.Dual;
import com.kh.dental.mypage.model.vo.PageInfo;


@WebServlet("/selectReviewNN.mp")
public class SelectReviewNNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectReviewNNServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
					System.out.println("서블릿시작"); 
					
					//ArrayList<Dual> list =null;
			
					//페이징 처리 추가
					int currentPage;	//현재 페이지를 표시할 변수
					int limit;			//한 페이지에 게시글이 몇 개 보여질 것인지
					int maxPage;		//전체 페이지에서 가장 마지막 페이지
					int startPage;		//한번에 표시될 페이지가 시작할 페이지
					int endPage;		//한번에 표시될 페이지가 끝나는 페이지
					
					//게시판은 1페이지부터 시작함
					currentPage = 1;
					
					String userName = request.getParameter("userName");
					
					System.out.println(request.getParameter("currentPage") instanceof String);
					System.out.println(request.getParameter("currentPage"));
					if(request.getParameter("currentPage") != null){
						currentPage = Integer.parseInt(request.getParameter("currentPage"));
						System.out.println("Servlet currentPage" + currentPage);
					}else {
						System.out.println("에러");
					}
					
					//한페이지에 보여질 목록 갯수
					limit = 10;
					
					//전체 목록 갯수를 리턴받음
					MypageService ds = new MypageService();
					int listCount = ds.getListCountN(userName);
					
					System.out.println("listCount : " + listCount);
					
					//총 페이지수 계산
					//예를 들면, 목록 수가 123개 이면 13페이지가 필요함
					//짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해서
					//전체 목록 / limit + 0.9
					maxPage = (int)((double)listCount / limit + 0.9);
					
					//현재 페이지에 보여줄 시작 페이지 수(10개씩 보여지게 할 경우)
					//아래쪽 페이지 수가 10개씩 보여지게 한다면
					//1, 11, 21, 31...
					startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;
					
					//목록 아래 보여질 마지막 페이지 수(10, 20, 30, ...)
					endPage = startPage + limit - 1;
					
					if(maxPage < endPage){
						endPage = maxPage;
					}
					
					PageInfo pi = new PageInfo(currentPage, listCount, 
											limit, maxPage, startPage, endPage);
					System.out.println(pi);
					
					//ArrayList<Board> list = new BoardService().selectList();
					
					ArrayList<Dual> list = new MypageService().selectListN(currentPage, limit, userName);
					
					System.out.println("어레이리스트 1:" + list);

				//list = new MypageService().selectDualD();
				request.setAttribute("list", list);
				JSONArray result = new JSONArray();
				JSONObject starInfo=null;
				
				System.out.println("control1" +list);
				
				result.add(pi);
				
				for(Dual da : list){
					starInfo = new JSONObject();
					
					starInfo.put("title", URLEncoder.encode(da.getBtitle(), "UTF-8"));
					starInfo.put("date", da.getBdate());
					starInfo.put("content", URLEncoder.encode(da.getBcontent(), "UTF-8"));
					starInfo.put("b_status", da.getBstatus());
					
					result.add(starInfo);
				}
				
				int ListSize = list.size();
				JSONObject ListL = new JSONObject();
				ListL.put("listS", ListSize);
				result.add(ListL);
				System.out.println("ListL : "+ListL);
				System.out.println(result);
				
				response.setContentType("application/json");
				response.setCharacterEncoding("UTF-8");
				
				new Gson().toJson(result, response.getWriter());
					
					
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
