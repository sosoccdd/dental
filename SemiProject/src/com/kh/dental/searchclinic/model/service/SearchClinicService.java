package com.kh.dental.searchclinic.model.service;

import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.searchclinic.model.dao.SearchClinicDao;
import com.kh.dental.searchclinic.model.vo.SearchClinic;

public class SearchClinicService {

	public ArrayList<SearchClinic> selectaddress(String sido, String gugun, String dong, int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<SearchClinic> list = new SearchClinicDao().selectaddress(con, sido, gugun, dong, currentPage, limit);
		
		close(con);
		
		
		return list;
	}

	public ArrayList<SearchClinic> selectgugun(String sido, String gugun) {
		Connection con = getConnection();
		
		ArrayList<SearchClinic> list = new SearchClinicDao().selectgugun(con, sido, gugun);
		
		close(con);
		
		
		return list;
	}

	public ArrayList<SearchClinic> selectsido(String sido) {
		Connection con = getConnection();
		
		ArrayList<SearchClinic> list = new SearchClinicDao().selectsido(con, sido);
		
		close(con);
		
		
		return list;
	}

	public int getListCount(String sido, String gugun, String dong) {
		  Connection con = getConnection();
	      int listCount = new SearchClinicDao().getListCount(con,sido,gugun,dong);
	      
	      close(con);
	      return listCount;

	}

	public int getListCountgugun(String sido, String gugun) {
		Connection con = getConnection();
	      int listCount = new SearchClinicDao().getListCountgugun(con,sido,gugun);
	      
	      close(con);
	      return listCount;

	}

	public int getListCountsido(String sido) {
		Connection con = getConnection();
	      int listCount = new SearchClinicDao().getListCountsido(con,sido);
	      
	      close(con);
	      return listCount;
	}

	
}
