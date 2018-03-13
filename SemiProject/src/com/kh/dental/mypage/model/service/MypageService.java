package com.kh.dental.mypage.model.service;
import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.mypage.model.dao.MypageDao;
import com.kh.dental.mypage.model.vo.Dual;
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

   public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Dual> selectList(int currentPage, int limit) {
		
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectList(con, currentPage, limit);
		
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

	public ArrayList<StarPoint> selectStar() {
		
		Connection con = getConnection();
		
		ArrayList<StarPoint> list = new MypageDao().selectStar(con);
		
		close(con);
		System.out.println("service" +list);
		return list;
	}

	public int getListCountD() {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCountD(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Dual> selectListD(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectListD(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

	public ArrayList<Dual> selectDualD() {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectDualD(con);
		
		close(con);
		
		
		return list;
		
		
		
	}

	public int getListCountN() {
		Connection con = getConnection();
		
		int listCount = new MypageDao().getListCountN(con);
		
		close(con);
		
		return listCount;
		
	}

	public ArrayList<Dual> selectListN(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new MypageDao().selectListN(con, currentPage, limit);
		
		close(con);
		
		return list;	
	}

	
   
}

















