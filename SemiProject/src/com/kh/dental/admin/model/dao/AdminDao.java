package com.kh.dental.admin.model.dao;


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

import com.kh.dental.admin.model.vo.Admin;
import com.kh.dental.admin.model.vo.AdminEvent;
import com.kh.dental.member.model.vo.Member;

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

	public int getListCount(Connection con) {
		  Statement stmt= null;
	      int listCount = 0;
	      ResultSet rset= null;
	      String query = prop.getProperty("listCountNMember");
	      
	      try {
	         stmt= con.createStatement();
	         rset=stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(stmt);
	      }
	      
	      return listCount;
	}

	public ArrayList<Admin> NmemberselectList(Connection con, int currentPage, int limit) {
		//페이징 처리 전
	      //Statement stmt = null;
	      
	      //페이징 처리 후 
	      PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      ArrayList<Admin> list = null;
	      
	      String query = prop.getProperty("NmemberselectList");
	      
	      try {
	         
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호ㅗ아 마지막 행 번호 계산
	         int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset= pstmt.executeQuery();
	         
	         list = new ArrayList<Admin>();
	         
	         while(rset.next()) {
	        	Admin m = new Admin();
	            
	            m.setmNo(rset.getInt("M_NO"));
				m.setmId(rset.getString("M_ID"));
				m.setmName(rset.getString("M_NAME"));
				m.setmPwd(rset.getString("M_PWD"));
				m.setAddress(rset.getString("M_ADDR"));
				m.setPhone(rset.getString("M_PHONE"));
				m.setGender(rset.getString("M_GENDER"));
				m.setType(rset.getString("M_TYPE"));
				m.setPtNo(rset.getInt("M_PT_NO"));
				m.setJoinDate(rset.getDate("M_JOIN_DATE"));
				m.setStatus(rset.getString("M_STATUS"));
				m.setDelDate(rset.getDate("M_DELETE_DATE"));
				m.setfNum(rset.getInt("F_NUM"));
				m.setHosNo(rset.getInt("M_HOS_NO"));
				m.setHosName(rset.getString("M_HOS_NAME"));
				m.setHosGender(rset.getString("M_HOS_GENDER"));
				m.setHosEtc(rset.getString("M_HOS_ETC"));
				m.setbIdCnt(rset.getInt("BID_COUNT"));
	            
	            list.add(m);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	}

	public int getDmemberListCount(Connection con) {
		  Statement stmt= null;
	      int listCount = 0;
	      ResultSet rset= null;
	      String query = prop.getProperty("listCountDmember");
	      
	      try {
	         stmt= con.createStatement();
	         rset=stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(stmt);
	      }
	      
	      return listCount;
	}

	public ArrayList<Admin> DmemberselectList(Connection con, int currentPage, int limit) {
		//페이징 처리 전
	      //Statement stmt = null;
	      
	      //페이징 처리 후 
	      PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      ArrayList<Admin> list = null;
	      
	      String query = prop.getProperty("DmemberselectList");
	      
	      try {
	         
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호ㅗ아 마지막 행 번호 계산
	         int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset= pstmt.executeQuery();
	         
	         list = new ArrayList<Admin>();
	         
	         while(rset.next()) {
	        	Admin m = new Admin();
	            
	            m.setmNo(rset.getInt("M_NO"));
				m.setmId(rset.getString("M_ID"));
				m.setmName(rset.getString("M_NAME"));
				m.setmPwd(rset.getString("M_PWD"));
				m.setAddress(rset.getString("M_ADDR"));
				m.setPhone(rset.getString("M_PHONE"));
				m.setGender(rset.getString("M_GENDER"));
				m.setType(rset.getString("M_TYPE"));
				m.setPtNo(rset.getInt("M_PT_NO"));
				m.setJoinDate(rset.getDate("M_JOIN_DATE"));
				m.setStatus(rset.getString("M_STATUS"));
				m.setDelDate(rset.getDate("M_DELETE_DATE"));
				m.setfNum(rset.getInt("F_NUM"));
				m.setHosNo(rset.getInt("M_HOS_NO"));
				m.setHosName(rset.getString("M_HOS_NAME"));
				m.setHosGender(rset.getString("M_HOS_GENDER"));
				m.setHosEtc(rset.getString("M_HOS_ETC"));
				m.setbIdCnt(rset.getInt("BID_COUNT"));
	            
	            list.add(m);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	}

	public int getCmemberListCount(Connection con) {
		Statement stmt= null;
	      int listCount = 0;
	      ResultSet rset= null;
	      String query = prop.getProperty("listCountCmember");
	      
	      try {
	         stmt= con.createStatement();
	         rset=stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(stmt);
	      }
	      
	      return listCount;
	}

	public ArrayList<Admin> CmemberselectList(Connection con, int currentPage, int limit) {
		//페이징 처리 전
	      //Statement stmt = null;
	      
	      //페이징 처리 후 
	      PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      ArrayList<Admin> list = null;
	      
	      String query = prop.getProperty("CmemberselectList");
	      
	      try {
	         
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호ㅗ아 마지막 행 번호 계산
	         int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset= pstmt.executeQuery();
	         
	         list = new ArrayList<Admin>();
	         
	         while(rset.next()) {
	        	Admin m = new Admin();
	            
	            m.setmNo(rset.getInt("M_NO"));
				m.setmId(rset.getString("M_ID"));
				m.setmName(rset.getString("M_NAME"));
				m.setmPwd(rset.getString("M_PWD"));
				m.setAddress(rset.getString("M_ADDR"));
				m.setPhone(rset.getString("M_PHONE"));
				m.setGender(rset.getString("M_GENDER"));
				m.setType(rset.getString("M_TYPE"));
				m.setPtNo(rset.getInt("M_PT_NO"));
				m.setJoinDate(rset.getDate("M_JOIN_DATE"));
				m.setStatus(rset.getString("M_STATUS"));
				m.setDelDate(rset.getDate("M_DELETE_DATE"));
				m.setfNum(rset.getInt("F_NUM"));
				m.setHosNo(rset.getInt("M_HOS_NO"));
				m.setHosName(rset.getString("M_HOS_NAME"));
				m.setHosGender(rset.getString("M_HOS_GENDER"));
				m.setHosEtc(rset.getString("M_HOS_ETC"));
				m.setbIdCnt(rset.getInt("BID_COUNT"));
	            
	            list.add(m);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	}

	public int UpdateNmember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateNmember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmName());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

	public int UpdateCmember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateCmember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmName());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

	public int UpdateDmember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateDmember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmName());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

	public int getBoEvListCount(Connection con) {
		Statement stmt= null;
	      int listCount = 0;
	      ResultSet rset= null;
	      String query = prop.getProperty("BoEvListCount");
	      
	      try {
	         stmt= con.createStatement();
	         rset=stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(stmt);
	      }
	      
	      return listCount;
	}

	public ArrayList<AdminEvent> BoEvselectList(Connection con, int currentPage, int limit) {
		//페이징 처리 전
	      //Statement stmt = null;
	      
	      //페이징 처리 후 
	      PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      ArrayList<AdminEvent> list = null;
	      
	      String query = prop.getProperty("SelectBoEv");
	      
	      try {
	         
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호ㅗ아 마지막 행 번호 계산
	         int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset= pstmt.executeQuery();
	         
	         list = new ArrayList<AdminEvent>();
	         
	         while(rset.next()) {
	        	AdminEvent m = new AdminEvent();
	            m.setB_count(rset.getInt("B_COUNT"));
	            m.setB_date(rset.getDate("B_DATE"));
	            m.setStart_date(rset.getDate("START_DATE"));
	            m.setEnd_date(rset.getDate("END_DATE"));
	            m.setB_writer(rset.getString("B_WRITER"));
	            m.setB_p_no(rset.getInt("B_P_NO"));
	            m.setStatus(rset.getString("STATUS"));
	            m.setBuyer_name(rset.getString("BUYER_NAME"));
	            m.setPaid_amount(Integer.parseInt(rset.getString("PAID_AMOUNT")));
	           
	            
	            list.add(m);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	}

	public int UpdateBoEv(Connection con, AdminEvent m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateBoEv");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getB_writer());
			pstmt.setInt(2, m.getB_p_no());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

	public int getHelpListCount(Connection con) {
		  Statement stmt= null;
	      int listCount = 0;
	      ResultSet rset= null;
	      String query = prop.getProperty("getHelpListCount");
	      System.out.println("getHelpListCount 쿼리문 =="+query);
	      try {
	         stmt= con.createStatement();
	         rset=stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(stmt);
	      }
	      
	      return listCount;
	}

	public ArrayList<AdminEvent> HelpselectList(Connection con, int currentPage, int limit) {
		//페이징 처리 전
	      //Statement stmt = null;
	      
	      //페이징 처리 후 
	      PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      ArrayList<AdminEvent> list = null;
	      
	      String query = prop.getProperty("HelpselectList");
	      
	      try {
	         
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호ㅗ아 마지막 행 번호 계산
	         int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset= pstmt.executeQuery();
	         
	         list = new ArrayList<AdminEvent>();
	         
	         while(rset.next()) {
	        	AdminEvent m = new AdminEvent();
	        	m.setB_no(rset.getInt("B_NO"));
	            m.setB_date(rset.getDate("B_DATE"));
	            m.setB_writer(rset.getString("B_WRITER"));
	            m.setB_title(rset.getString("B_TITLE"));
	            m.setB_content(rset.getString("B_CONTENT"));
	            m.setB_status(rset.getString("B_STATUS"));
	            
	            list.add(m);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	}

	public int UpdateHelp(Connection con, AdminEvent m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateHelp");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, m.getB_no());
			pstmt.setString(2, m.getB_writer());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

	public int getApprovalListCount(Connection con) {
		Statement stmt= null;
	      int listCount = 0;
	      ResultSet rset= null;
	      String query = prop.getProperty("getApprovalListCount");
	      
	      try {
	         stmt= con.createStatement();
	         rset=stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(stmt);
	      }
	      
	      return listCount;
	}

	public ArrayList<Admin> ApprovalselectList(Connection con, int currentPage, int limit) {
		//페이징 처리 전
	      //Statement stmt = null;
	      
	      //페이징 처리 후 
	      PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      ArrayList<Admin> list = null;
	      
	      String query = prop.getProperty("ApprovalselectList");
	      
	      try {
	         
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호ㅗ아 마지막 행 번호 계산
	         int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset= pstmt.executeQuery();
	         
	         list = new ArrayList<Admin>();
	         
	         while(rset.next()) {
	        	Admin m = new Admin();
	            
	            m.setmNo(rset.getInt("M_NO"));
				m.setmId(rset.getString("M_ID"));
				m.setmName(rset.getString("M_NAME"));
				m.setmPwd(rset.getString("M_PWD"));
				m.setAddress(rset.getString("M_ADDR"));
				m.setPhone(rset.getString("M_PHONE"));
				m.setGender(rset.getString("M_GENDER"));
				m.setType(rset.getString("M_TYPE"));
				m.setPtNo(rset.getInt("M_PT_NO"));
				m.setJoinDate(rset.getDate("M_JOIN_DATE"));
				m.setStatus(rset.getString("M_STATUS"));
				m.setDelDate(rset.getDate("M_DELETE_DATE"));
				m.setfNum(rset.getInt("F_NUM"));
				m.setHosNo(rset.getInt("M_HOS_NO"));
				m.setHosName(rset.getString("M_HOS_NAME"));
				m.setHosGender(rset.getString("M_HOS_GENDER"));
				m.setHosEtc(rset.getString("M_HOS_ETC"));
				m.setbIdCnt(rset.getInt("BID_COUNT"));
	            
	            list.add(m);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	}

	public int UpdateApproval(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateApproval");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmName());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

}
