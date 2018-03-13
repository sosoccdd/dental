package com.kh.dental.mypage.model.dao;

import static com.kh.dental.common.JDBCTemplet.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import com.kh.dental.dual.model.vo.*;
import com.kh.dental.mypage.model.vo.Dual;

public class DualDao {
	
	private Properties prop = new Properties();
	
	public DualDao(){
		String fileName = DualDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
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
						
						/*b.setBid(rset.getInt("bid"));
						b.setbType(rset.getInt("btype"));
						b.setBno(rset.getInt("bno"));
						b.setCategory(rset.getString("cname"));
						b.setbTitle(rset.getString("btitle"));
						b.setbContent(rset.getString("bcontent"));
						b.setbWriter(rset.getString("nick_name"));
						b.setbCount(rset.getInt("bcount"));
						b.setRefBid(rset.getInt("ref_bid"));
						b.setRefRefBid(rset.getInt("ref_ref_bid"));
						b.setReply_level(rset.getInt("reply_level"));
						b.setbDate(rset.getDate("bdate"));
						b.setStatus(rset.getString("status"));
						*/
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

}
