package com.kh.dental.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.event.model.service.EventService;
import com.kh.dental.event.model.vo.Pay;

/**
 * Servlet implementation class PayEventServlet
 */
@WebServlet("/pay.ev")
public class PayEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayEventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*  msg += '고유ID : ' + rsp.imp_uid;
          msg += '상점 거래ID : ' + rsp.merchant_uid;
          msg += '결제 금액 : ' + rsp.paid_amount;
          msg += '카드 승인번호 : ' + rsp.apply_num*/
		/*"payMethod":'card', "name":'이벤트 등록 비용 결제',
   		,  "amount": price, "buyerName":<%= loginUser.getmName()%>,
   		  , "buyerTel":<%= loginUser.getmPhone() %> , "buyer_addr": <%= loginUser.getmAddr()%>*/
   		String payMethod = request.getParameter("payMethod");
   		String name = request.getParameter("name");
   		
   		String buyerName = request.getParameter("buyerName");
   		String buyerTel = request.getParameter("buyerTel");
   		String buyerAddr = request.getParameter("buyerAddr");
        String impUid = request.getParameter("impUid");
        String merchantUid = request.getParameter("merchantUid");
        int amount = Integer.parseInt(request.getParameter("amount"));
        String applyNum = request.getParameter("applyNum");
        
      System.out.println(impUid+" / "+ merchantUid+" / "+ payMethod+" / "+ amount+" / "+ name+" / "+ buyerName
    		  +" / "+ buyerTel+" / "+ buyerAddr+" / "+ applyNum );
      
        
       Pay p = new Pay(impUid, merchantUid, payMethod, amount, name, buyerName, buyerTel, buyerAddr, applyNum );
       
       int result = new EventService().insertPayInfo(p);
		
	   
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
