package com.kh.dental.mypage.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.dental.mypage.model.vo.Dual;
import com.kh.dental.mypage.model.vo.StarPoint;
import com.sun.xml.internal.fastinfoset.Decoder;

import static com.kh.dental.common.JDBCTemplet.*;


public class MypageDao {
   
   private Properties prop = new Properties();
   
   public MypageDao(){
      
      String fileName = MypageDao.class.getResource("/sql/mypage/mypage-query.properties").getPath();
      System.out.println(fileName);
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
      
      System.out.println(userId);
      
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
   
   public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				listCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

	public ArrayList<Dual> selectList(Connection con, int currentPage, int limit) {
		//페이징처리 전
				//Statement stmt = null;
				
				//페이징처리 후
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				ArrayList<Dual> list = null;
				
				String query = prop.getProperty("selectList");
				
				try {
					//페이징처리 전
					/*stmt = con.createStatement();
					rset = stmt.executeQuery(query);*/
					
					//페이징처리 후
					pstmt = con.prepareStatement(query);
					
					//조회 시작할 행 번호와 마지막 행 번호 계산
					int startRow = (currentPage - 1) * limit + 1;
					int endRow = startRow + limit - 1;
					pstmt.setInt(1, startRow);
					pstmt.setInt(2, endRow);
					
					rset = pstmt.executeQuery();
					
					list = new ArrayList<Dual>();
					
					while(rset.next()){
						Dual b = new Dual();
						
						b.setBtype(rset.getInt("b_type"));
						b.setBno(rset.getInt("b_no"));
						b.setBtitle(rset.getString("b_title"));
						b.setBcontent(rset.getString("b_content"));
						b.setBcount(rset.getInt("b_count"));
						b.setBdate(rset.getDate("b_date"));
						b.setBstatus(rset.getString("b_status"));
						
						list.add(b);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				
				return list;
	}
	
	

	public int insertDual(Connection con, Dual d) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertDual");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, d.getBwriter());
			pstmt.setString(2, d.getBcontent());
			pstmt.setString(3, d.getBtitle());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	
	
	
	public ArrayList<StarPoint> selectStar(Connection con) {
		
		ArrayList<StarPoint> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		StarPoint sp = null;
		
		String query = prop.getProperty("selectStar");
		
		try {
			pstmt = con.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<StarPoint>();
			
			if(rset != null){
				while(rset.next()){
					sp = new StarPoint();
					
					sp.setBno(rset.getInt("b_no"));
					sp.setBwriter(rset.getString("b_writer"));
					sp.setBcontent(rset.getString("b_content"));
					sp.setBtno(rset.getInt("b_tno"));
					sp.setBtype(rset.getShort("b_type"));
					sp.setBtitle(rset.getString("b_title"));
					sp.setBstatus(rset.getString("b_status"));
					sp.setStartpt(rset.getInt("start_pt"));
					sp.setYkiho_enc(rset.getString("YKIHO_ENC"));
					sp.setBdate(rset.getDate("b_date"));
					list.add(sp);
				}
			}
			System.out.println("Dao" +list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int getListCountD(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				listCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

	public ArrayList<Dual> selectListD(Connection con, int currentPage, int limit) {
		//페이징처리 전
		//Statement stmt = null;
		
		//페이징처리 후
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Dual> list = null;
		
		String query = prop.getProperty("selectListD");
		
		try {
			//페이징처리 전
			/*stmt = con.createStatement();
			rset = stmt.executeQuery(query);*/
			
			//페이징처리 후
			pstmt = con.prepareStatement(query);
			
			//조회 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Dual>();
			
			while(rset.next()){
				Dual b = new Dual();
				
				b.setBtype(rset.getInt("b_type"));
				b.setBno(rset.getInt("b_no"));
				b.setBtitle(rset.getString("b_title"));
				b.setBcontent(rset.getString("b_content"));
				b.setBcount(rset.getInt("b_count"));
				b.setBdate(rset.getDate("b_date"));
				b.setBstatus(rset.getString("b_status"));
				
				list.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	
	}

	public ArrayList<Dual> selectDualD(Connection con) {
		ArrayList<Dual> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Dual da = null;
		
		String query = prop.getProperty("selectDualD");
		
		try {
			pstmt = con.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Dual>();
			
			if(rset != null){
				while(rset.next()){
					da = new Dual();
					
					da.setBno(rset.getInt("b_no"));
					da.setBtitle(rset.getString("b_title"));
					da.setBcontent(rset.getString("b_content"));
					da.setBstatus(rset.getString("status"));
					da.setBdate(rset.getDate("b_date"));
					
					list.add(da);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	
	
	
	}

	public int getListCountN(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCountN");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				listCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	
	
	}

	public ArrayList<Dual> selectListN(Connection con, int currentPage, int limit) {
		
		//페이징처리 후
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				ArrayList<Dual> list = null;
				
				String query = prop.getProperty("selectDualN");
				
				try {
					//페이징처리 전
					/*stmt = con.createStatement();
					rset = stmt.executeQuery(query);*/
					
					//페이징처리 후
					pstmt = con.prepareStatement(query);
					
					//조회 시작할 행 번호와 마지막 행 번호 계산
					int startRow = (currentPage - 1) * limit + 1;
					int endRow = startRow + limit - 1;
					
					pstmt.setInt(1, startRow);
					pstmt.setInt(2, endRow);
					
					rset = pstmt.executeQuery();
					
					list = new ArrayList<Dual>();
					
					while(rset.next()){
						Dual da = new Dual();
						
						da.setBno(rset.getInt("b_no"));
						da.setBtitle(rset.getString("b_title"));
						da.setBcontent(rset.getString("b_content"));
						da.setBstatus(rset.getString("status"));
						da.setBdate(rset.getDate("b_date"));
						
						list.add(da);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				return list;
	
	
	}

	

}
























