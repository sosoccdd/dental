package com.kh.dental.member.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.dental.common.Attachment;
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

	// 로그인 처리용 메소드
	public Member loginCheck(Connection con, String mId, String mPwd) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("loginCheck");

		try {

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


			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return loginUser;
	}

	// 아이디 중복체크 처리용 메소드
	public int idCheck(Connection con, String mId) {
		int result = 0;

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("idCheck");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, mId);

			rset = pstmt.executeQuery();

			if (rset.next()) {
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

	// 일반 회원가입 처리용 메소드
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

	// 의사 회원가입 처리용 메소드
	public int insertDentist(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertDentist");
		
		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmName());
			pstmt.setString(3, m.getmPwd());
			pstmt.setString(4, m.getAddress());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getGender());
			pstmt.setString(7, m.getType());
			pstmt.setInt(8, m.getfNum());
			pstmt.setString(9, m.getHosGender());
			pstmt.setString(10, m.getHosEtc());
			pstmt.setInt(11, m.getDLincenceNo());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int selectCurrval(Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int mNo = 0;
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			pstmt = con.prepareStatement(query);
			
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mNo = rset.getInt("currval");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return mNo;
	}

	//의사 회원가입 프로필 사진 등록 처리용 메소드
	public int insertProfile(Connection con, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertProfile");
		
		try {
			for(int i = 0; i < fileList.size(); i++) {
				pstmt = con.prepareStatement(query);
				
				pstmt.setString(1, fileList.get(i).getFilePath());
				pstmt.setString(2, fileList.get(i).getOriginName());
				pstmt.setString(3, fileList.get(i).getChangeName());
				pstmt.setInt(4, fileList.get(i).getMno());
				
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		

		return result;
	}


}
