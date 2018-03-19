package com.kh.dental.mypage.model.service;


import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.mypage.model.dao.MypageDao;
import com.kh.dental.mypage.model.vo.CRlist;
import com.kh.dental.mypage.model.vo.Dual;
import com.kh.dental.mypage.model.vo.RMember;
import com.kh.dental.mypage.model.vo.Res;
import com.kh.dental.mypage.model.vo.StarPoint;


public class MypageService {

   public MypageService(){}

   public int updatePwd(String userId, String pwd) {
      Connection con = getConnection();
      
      int result = new MypageDao().updatePwd(con, userId, pwd);
      
      System.out.println(result);
      if(result > 0) commit(con);
      else rollback(con);
      
      close(con);
      
      return result;
   }

   public int getListCount(String userName) {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCount(con, userName);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Dual> selectList(int currentPage, int limit, String userName) {
		
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectList(con, currentPage, limit, userName);
		
		close(con);
		
		return list;
	}

	
	
		
	public int insertDual(Dual d) {
		
		Connection con = getConnection();
		
		int result = new MypageDao().insertDual(con, d);
		
		if(result>0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public ArrayList<StarPoint> selectStar(String userid) {
		
		Connection con = getConnection();
		
		ArrayList<StarPoint> list = new MypageDao().selectStar(con, userid);
		
		close(con);
		System.out.println("service" +list);
		return list;
	}

	public int getListCountD(String userName) {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCountD(con, userName);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Dual> selectListD(int currentPage, int limit, String userName) {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectListD(con, currentPage, limit, userName);
		
		close(con);
		
		return list;
	}

	public ArrayList<Dual> selectDualD(String userName) {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectDualD(con, userName);
		
		close(con);
		
		
		return list;
		
		
		
	}

	public int getListCountN(String userName) {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCountN(con, userName);
		
		close(con);
		
		return listCount;
		
	}

	public ArrayList<Dual> selectListN(int currentPage, int limit, String userName) {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectListN(con, currentPage, limit, userName);
		
		close(con);
		
		return list;	
	}

	public int getListCountR(String hosCd) {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCountR(con, hosCd);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Res> selectListR(int currentPage, int limit, String hosCd) {
		
		Connection con = getConnection();
		
		ArrayList<Res> list = new MypageDao().selectListR(con, currentPage, limit, hosCd);
		
		close(con);
		
		return list;
	}

	public String hospitalCd(int loginNo) {
		
		Connection con = getConnection();
		
		String result = "";
		
		result = new MypageDao().hospitalCd(con, loginNo);
		
		close(con);
	
		return result;
	}

	public int getListCountRmember(String mno) {
		Connection con = getConnection();
		
		int listCount = new MypageDao().listCountRmember(con, mno);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<RMember> selectRMemberList(int currentPage, int limit, String mno) {
		
		Connection con = getConnection();
		
		ArrayList<RMember> list = new MypageDao().selectRMemberList(con, currentPage, limit, mno);
		
		close(con);
		
		return list;
	}

	public ArrayList<CRlist> selectCRlist(String rid) {
		
		Connection con = getConnection();
		
		ArrayList<CRlist> list = new MypageDao().selectCRlist(con, rid);
		
		close(con);
		
		return list;
	}

	
   
}
