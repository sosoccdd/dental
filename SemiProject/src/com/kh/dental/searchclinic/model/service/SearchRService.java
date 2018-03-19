package com.kh.dental.searchclinic.model.service;


import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.searchclinic.model.dao.SearchRDao;
import com.kh.dental.searchclinic.model.vo.Cdetail;
import com.kh.dental.searchclinic.model.vo.Res;


public class SearchRService {

	public ArrayList<Res> searchRList(String hosName) {
		
		Connection con = getConnection();
		ArrayList<Res> list = null;
		
		list = new SearchRDao().searchRList(con, hosName);
		
		close(con);
		
		return list;
	}

	public int updateRstatus(String bno) {
		
		Connection con = getConnection();
		int result = 0;
		
		result = new SearchRDao().updateRstatus(con, bno);
		
		if(result >0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}

	public Cdetail selectCdetail(String tel) {
		
		Connection con = getConnection();
		
		Cdetail cd = null;
		
		cd = new SearchRDao().selectCdetail(con, tel);
		
		close(con);
		
		return cd;
	}

}
