package com.kh.dental.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.member.model.vo.Member;
import com.kh.dental.mypage.model.service.MypageService;
import com.kh.dental.mypage.model.vo.Dual;
import com.kh.dental.mypage.model.vo.PageInfo;
import com.kh.dental.mypage.model.vo.Res;

/**
 * Servlet implementation class SelectRlistServlet
 */
@WebServlet("/selectR.mp")
public class SelectRlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectRlistServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		MypageService ds = new MypageService();
		
		int loginNo = loginUser.getmNo();
		
		System.out.println(loginNo);
		
		String hosCd = ds.hospitalCd(loginNo);
		
		System.out.println("호스코드"+hosCd);
		
		//페이징 처리 추가
				int currentPage1;	//현재 페이지를 표시할 변수
				int limit1;			//한 페이지에 게시글이 몇 개 보여질 것인지
				int maxPage1;		//전체 페이지에서 가장 마지막 페이지
				int startPage1;		//한번에 표시될 페이지가 시작할 페이지
				int endPage1;		//한번에 표시될 페이지가 끝나는 페이지
				
				//게시판은 1페이지부터 시작함
				currentPage1 = 1;
				
				if(request.getParameter("currentPage1") != null){
					currentPage1 = Integer.parseInt(request.getParameter("currentPage1"));
					System.out.println("Servlet currentPage" + currentPage1);
				}
				
				//한페이지에 보여질 목록 갯수
				limit1 = 5;
				
				//전체 목록 갯수를 리턴받음
				
				int listCount = ds.getListCountR(hosCd);
				
				System.out.println("listCountR : " + listCount);
				
				//총 페이지수 계산
				//예를 들면, 목록 수가 123개 이면 13페이지가 필요함
				//짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해서
				//전체 목록 / limit + 0.9
				maxPage1 = (int)((double)listCount / limit1 + 0.9);
				
				//현재 페이지에 보여줄 시작 페이지 수(10개씩 보여지게 할 경우)
				//아래쪽 페이지 수가 10개씩 보여지게 한다면
				//1, 11, 21, 31...
				startPage1 = ((int)((double)currentPage1 / limit1 + 0.9) - 1) * limit1 + 1;
				
				//목록 아래 보여질 마지막 페이지 수(10, 20, 30, ...)
				endPage1 = startPage1 + limit1 - 1;
				
				if(maxPage1 < endPage1){
					endPage1 = maxPage1;
				}
				
				PageInfo pi = new PageInfo(currentPage1, listCount, 
										limit1, maxPage1, startPage1, endPage1);
				
				
				//ArrayList<Board> list = new BoardService().selectList();
				
				ArrayList<Res> list = new MypageService().selectListR(currentPage1, limit1, hosCd);
				
				System.out.println(list);
				
				String page = "";
				if(list != null){
					page = "views/MyPage/NMyPage.jsp";
					request.setAttribute("list1", list);
					request.setAttribute("pi1", pi);
					System.out.println("SelectNoticeList : " + pi);
				}else{
					page = "views/common/errorPage.jsp";
					request.setAttribute("msg", "게시판 조회 실패!");
				}
				
				System.out.println(pi + ":::" + list);
				
				request.getRequestDispatcher(page).forward(request, response);
	
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
