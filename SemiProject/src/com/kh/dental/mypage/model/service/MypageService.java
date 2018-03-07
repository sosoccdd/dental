package com.kh.dental.mypage.model.service;
import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;

import com.kh.dental.mypage.model.dao.MypageDao;


public class MypageService {

	public MypageService(){}

	public int updatePwd(String userId, String pwd) {
		
		Connection con = getConnection();
		
		int result = new MypageDao().updatePwd(con, userId, pwd);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
}
