package com.kh.dental.admin.model.dao;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.dental.admin.model.vo.Admin;
import static com.kh.dental.common.JDBCTemplet.*;

public class AdminDao {
	Properties prop = new Properties();

	public AdminDao() {
		String fileName = AdminDao.class.getResource("/sql/admin/admin-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Admin loginCheck(Connection con, String userId, String userPwd) {
		  Admin loginUser = null;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      
	      
	      String query = prop.getProperty("loginCheck");
	      try {
	    	 System.out.println("쿼리문 : " + query);
	         pstmt=con.prepareStatement(query);
	         pstmt.setString(1,userId);
	         pstmt.setString(2,userPwd);
	         
	         rset = pstmt.executeQuery();
	         
	         if (rset.next()) {
	            loginUser = new Admin();

	            loginUser.setmNo(rset.getInt("M_NO"));
				loginUser.setmId(rset.getString("M_ID"));
				loginUser.setmName(rset.getString("M_NAME"));
				loginUser.setmPwd(rset.getString("M_PWD"));
				loginUser.setAddress(rset.getString("M_ADDR"));
				loginUser.setPhone(rset.getString("M_PHONE"));
				loginUser.setGender(rset.getString("M_GENDER"));
				loginUser.setType(rset.getString("M_TYPE"));
				loginUser.setPtNo(rset.getInt("M_PT_NO"));
				loginUser.setJoinDate(rset.getDate("M_JOIN_DATE"));
				loginUser.setStatus(rset.getString("M_STATUS"));
				loginUser.setDelDate(rset.getDate("M_DELETE_DATE"));
				loginUser.setfNum(rset.getInt("F_NUM"));
				loginUser.setHosNo(rset.getInt("M_HOS_NO"));
				loginUser.setHosName(rset.getString("M_HOS_NAME"));
				loginUser.setHosGender(rset.getString("M_HOS_GENDER"));
				loginUser.setHosEtc(rset.getString("M_HOS_ETC"));
				loginUser.setbIdCnt(rset.getInt("BID_COUNT"));
	         }
	         
	      }catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      return loginUser;
	}

}
