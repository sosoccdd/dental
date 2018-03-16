package com.kh.dental.searchclinic.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.dental.common.JDBCTemplet.*;

import com.kh.dental.searchclinic.model.vo.Res;
import com.kh.dental.searchclinic.model.vo.SearchClinic;

public class SearchClinicDao {
	private Properties prop = new Properties();
	
	public SearchClinicDao() {
		String fileName = SearchClinicDao.class.getResource("/sql/searchclinic/searchclinic-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<SearchClinic> selectaddress(Connection con, String sido, String gugun, String dong, int currentPage, int limit) {
		ArrayList<SearchClinic> list=new ArrayList<SearchClinic>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectaddres");
		
		try {
			
			 int startRow = (currentPage -1)*limit+1;
	         int endRow =startRow + limit-1;
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, sido);
			pstmt.setString(2, gugun);
			pstmt.setString(3, dong);
			pstmt.setInt(4, startRow);
			pstmt.setInt(5, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				SearchClinic sc = new SearchClinic();
				sc.setYkiho_enc(rset.getString("YKIHO_ENC"));
				sc.setYadm_nm(rset.getString("YADM_NM"));
				sc.setAddr(rset.getString("ADDR"));
				sc.setTelno(rset.getString("TELNO"));
				sc.setX_pos(rset.getString("X_POS_WGS84"));
				sc.setY_pos(rset.getString("Y_POS_WGS84"));
				sc.setStatus(rset.getString("STATUS"));
				list.add(sc);
			}
			System.out.println(list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		
		
		return list;
	}


	public ArrayList<SearchClinic> selectgugun(Connection con, String sido, String gugun) {
		ArrayList<SearchClinic> list=new ArrayList<SearchClinic>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("selectgugun");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, sido);
			pstmt.setString(2, gugun);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				SearchClinic sc = new SearchClinic();
				sc.setYkiho_enc(rset.getString("YKIHO_ENC"));
				sc.setYadm_nm(rset.getString("YADM_NM"));
				sc.setAddr(rset.getString("ADDR"));
				sc.setTelno(rset.getString("TELNO"));
				sc.setX_pos(rset.getString("X_POS_WGS84"));
				sc.setY_pos(rset.getString("Y_POS_WGS84"));
				sc.setStatus(rset.getString("STATUS"));
				list.add(sc);
			}
			System.out.println(list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}


	public ArrayList<SearchClinic> selectsido(Connection con, String sido) {
		ArrayList<SearchClinic> list=new ArrayList<SearchClinic>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("selectsido");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, sido);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				SearchClinic sc = new SearchClinic();
				sc.setYkiho_enc(rset.getString("YKIHO_ENC"));
				sc.setYadm_nm(rset.getString("YADM_NM"));
				sc.setAddr(rset.getString("ADDR"));
				sc.setTelno(rset.getString("TELNO"));
				sc.setX_pos(rset.getString("X_POS_WGS84"));
				sc.setY_pos(rset.getString("Y_POS_WGS84"));
				sc.setStatus(rset.getString("STATUS"));
				list.add(sc);
			}
			System.out.println(list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}


	public int getListCount(Connection con, String sido, String gugun, String dong) {
		PreparedStatement pstmt = null;
		ResultSet rset = null; 
		int listCount = 0;
		String query = prop.getProperty("listCount");
	      try {
	    	  pstmt=con.prepareStatement(query);
	    	  pstmt.setString(1, sido);
	    	  pstmt.setString(2, gugun);
	    	  pstmt.setString(3, dong);
	    	  rset = pstmt.executeQuery();
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      return listCount;
	}


	public int getListCountgugun(Connection con, String sido, String gugun) {
		PreparedStatement pstmt = null;
		ResultSet rset = null; 
		int listCount = 0;
		String query = prop.getProperty("listCountgugun");
	      try {
	    	  pstmt=con.prepareStatement(query);
	    	  pstmt.setString(1, sido);
	    	  pstmt.setString(2, gugun);
	    	  rset = pstmt.executeQuery();
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      return listCount;
	}


	public int getListCountsido(Connection con, String sido) {
		PreparedStatement pstmt = null;
		ResultSet rset = null; 
		int listCount = 0;
		String query = prop.getProperty("listCountsido");
	      try {
	    	  pstmt=con.prepareStatement(query);
	    	  pstmt.setString(1, sido);
	    	  rset = pstmt.executeQuery();
	         
	         if(rset.next()) {
	            //첫 번째 해당하는 값을 가져온다.
	            listCount = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      return listCount;
	}


	public int insertRes(Connection con, Res rs) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("insertRes");
		
		
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rs.getR_time());
			pstmt.setInt(2, rs.getM_no());
			pstmt.setString(3, rs.getEtc());
			pstmt.setString(4, rs.getYkiho_enc());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	public String searchHnm(Connection con, String hosName) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String result ="";
		
		String query = prop.getProperty("selectHnm");
		
		System.out.println(query);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, hosName);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				result = rset.getString("ykiho_enc");
			}
			/*if(rset != null){
				while(rset.next()){
					result = rset.getString("YKIHO_ENC");
				}
			}*/
			System.out.println("병원이름 " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(con);
		}
	
		return result;
	}


	

}
