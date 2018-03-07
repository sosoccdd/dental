package com.kh.dental.mypage.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.dental.common.JDBCTemplet.*;


public class MypageDao {
	
	private Properties prop = new Properties();
	
	public MypageDao(){
		
		String fileName = MypageDao.class.getResource("/sql/mypage-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int updatePwd(Connection con, String userId, String pwd) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updatePwd");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pwd);
			pstmt.setString(2, userId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

}
