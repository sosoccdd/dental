package com.kh.dental.mypage.model.service;


import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.dual.model.dao.DualDao;
import com.kh.dental.dual.model.vo.Dual;

import static com.kh.dental.common.JDBCTemplet.*;

public class DualService {

	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new DualDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Dual> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Dual> list = new DualDao().selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

}
