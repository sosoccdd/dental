package com.kh.dental.admin.model.service;

import static com.kh.dental.common.JDBCTemplet.*;
import java.sql.Connection;

import com.kh.dental.admin.model.dao.AdminDao;
import com.kh.dental.admin.model.vo.Admin;

public class AdminService {

	public Admin loginCheck(String userId, String userPwd) {
		Connection con = getConnection();
		
		Admin loginUser = new AdminDao().loginCheck(con, userId, userPwd);
		System.out.println(loginUser);
		close(con);
		
		return loginUser;
	}

}
