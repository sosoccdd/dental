package com.kh.dental.searchclinic.model.service;


import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.searchclinic.model.dao.SearchRDao;
import com.kh.dental.searchclinic.model.vo.Res;


public class SearchRService {

	public ArrayList<Res> searchRList(String hosName) {
		
		Connection con = getConnection();
		ArrayList<Res> list = null;
		
		list = new SearchRDao().searchRList(con, hosName);
		
		close(con);
		
		return list;
	}

}
