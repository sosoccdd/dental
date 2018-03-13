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
			//System.out.println("쿼리문 : " + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, mId);
			pstmt.setString(2, mPwd);
			
			rset = pstmt.executeQuery();
			//System.out.println(rset);
			
			if(rset.next()) {
				loginUser = new Member();
					
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
				
				//System.out.println("memberDao : " + loginUser);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginUser;
	}

	//아이디 중복체크 처리용 메소드
	public int idCheck(Connection con, String mId) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("idCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, mId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	//회원가입 처리용 메소드
	public int insertMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmName());
			pstmt.setString(3, m.getmPwd());
			pstmt.setString(4, m.getAddress());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getGender());
			pstmt.setString(7, m.getType());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
