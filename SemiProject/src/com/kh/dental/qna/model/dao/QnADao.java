package com.kh.dental.qna.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.dental.common.JDBCTemplet.*;

import com.kh.dental.qna.model.vo.QnA;
import com.kh.dental.qna.model.vo.QnAPageInfo;
import com.kh.dental.common.Attachment;

public class QnADao {
	
	private Properties prop = new Properties();
	
	
	public int getListCount(Connection con) {

		int listCount = 0;
		PreparedStatement pstmt= null;
		//!!!!///////////////////쿼리문 아직 완성 안됨!
		String query =prop.getProperty("listCount");
		ResultSet rset =null;
		
		
		try {
			pstmt = con.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				
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


	public ArrayList<QnA> selectList(Connection con, int currentPage, int pageNum) {
		
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		String query = prop.getProperty("selectList");
		ArrayList<QnA> list= new ArrayList<QnA>();
		
		try {
			pstmt=con.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				QnA q = new QnA();
				q.setbContent(rset.getString("b_content"));
				q.setbCount(rset.getInt("b_count"));
				q.setbDate(rset.getDate("b_date"));
				q.setbNo(rset.getInt("b_no"));
				q.setbPno(rset.getInt("b_p_no"));
				q.setbStatus(rset.getString("b_status"));
				q.setbTitle(rset.getString("b_title"));
				q.setbWriter(rset.getString("b_writer"));
				q.setFileNo(rset.getInt("b_file_no"));
				q.settNo(rset.getInt("b_tno"));
				
				
				
				list.add(q);
				
				
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


	public int insertQnA(Connection con, QnA q) {
		
	PreparedStatement pstmt = null;
	int result= 0;
	
	String query = prop.getProperty("insertPic");
	
	
	try {
		pstmt= con.prepareStatement(query);
		pstmt.setString(1, q.getbTitle());
		pstmt.setString(2, q.getbContent());
		pstmt.setInt(3,Integer.parseInt(q.getbWriter()));
		
		result = pstmt.executeUpdate();
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		
		close(pstmt);
		
	}
		
	return result;
	
	}


	public int selectCurrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		int bid = 0;
		
		String query = prop.getProperty("selectCurrval");
		//쿼리문생성
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				bid = rset.getInt("currval");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return bid;
	}

	public int insertAttachment(Connection con, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertAttachment");
		
		try {
			for(int i = 0; i < fileList.size(); i++){
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, fileList.get(i).getBid());
				pstmt.setString(2, fileList.get(i).getOriginName());
				pstmt.setString(3, fileList.get(i).getChangeName());
				pstmt.setString(4, fileList.get(i).getFilePath());
				
				int level = 0;
				if(i == 0) level = 0;
				else level = 1;
				
				pstmt.setInt(5, level);
				
				result += pstmt.executeUpdate();
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		
		return result;
	}

}
