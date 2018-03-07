package com.kh.dental.member.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.dental.member.model.vo.Member;
import static com.kh.dental.common.JDBCTemplet.*;

public class MemberDao {
	
	Properties prop = new Properties();

	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	//로그인 처리용 메소드
	public Member loginCheck(Connection con, String mId, String mPwd) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("loginCheck");
		
		try {
			//System.out.println(query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, mId);
			pstmt.setString(2, mPwd);
			
			rset = pstmt.executeQuery();
			//System.out.println(rset);
			
			if(rset.next()) {
				loginUser = new Member();
					
				loginUser.setmId(rset.getString("M_ID"));
				loginUser.setmName(rset.getString("M_NAME"));
				loginUser.setmAddr(rset.getString("M_ADDR"));
				loginUser.setmPwd(rset.getString("M_PWD"));
				loginUser.setmPhone(rset.getString("M_PHONE"));
				loginUser.setmDate(rset.getDate("M_DATE"));
				loginUser.setmGender(rset.getString("M_GENDER"));
				loginUser.setmType(rset.getString("M_TYPE"));
				loginUser.setmNo(rset.getInt("M_NO"));
				loginUser.setfNum(rset.getInt("F_NUM"));
				loginUser.setmPtNo(rset.getInt("M_PT_NO"));
				loginUser.setmRes(rset.getInt("M_RES"));
				
				System.out.println("memberDao : " + loginUser);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginUser;
	}

}
