package com.kh.dental.event.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.dental.common.Attachment;
import com.kh.dental.event.model.vo.Event;
import com.kh.dental.event.model.vo.Pay;

import static com.kh.dental.common.JDBCTemplet.*;

public class EventDao {
	private Properties prop = new Properties();

	public EventDao(){
		String fileName = EventDao.class.getResource("/sql/event/event-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		}catch (FileNotFoundException e) {
			e.printStackTrace();	
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	//이벤트 등록하기
	public int insertEvent(Connection con, Event e) {
		System.out.println("evenetDao/insertEvent con, e : " +con +" ," + e );
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertEvent");
		
		System.out.println("EventDao - insertEvent e , con: " + e  + "," + con);
		try {
			pstmt = con.prepareStatement(query);
			//SEQ_B_NO.NEXTVAL, ?, ?, SEQ_BE_NO.NEXTVAL, C, SYSDATE, DEFAULT, ?, ?, NULL, DEFAULT, NULL, NULL, ?, ?, NULL, NULL, DEFAULT, NULL, NULL
			
			pstmt.setString(1, e.geteWriter());
			pstmt.setString(2, e.geteTitle());
			pstmt.setInt(3, e.getePrice());
			pstmt.setDate(4, e.geteSdate());
			pstmt.setDate(5, e.geteEdate());
			pstmt.setInt(6, e.getePhoto());
			pstmt.setString(7, e.geteContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}

	
	//결제한 회원 정보 DB입력
	public int insertPayInfo(Connection con, Pay p) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertPayInfo");
		
		try {
			pstmt = con.prepareStatement(query);
		
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally{
			close(pstmt);
			
		}
		
		
		return result;
	}
	
	public int selectCurrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		int bid = 0;
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				/*bid = rset.getInt("CURRVAL");*/
				
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return bid;
	}

	public int insertAttachment(Connection con, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertAttachment");
		System.out.println(fileList.get(0).getOriginName());
		
		try {
			for(int i = 0; i < fileList.size(); i++) {
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, fileList.get(i).getBid());
				pstmt.setString(2, fileList.get(i).getOriginName());
				pstmt.setString(3, fileList.get(i).getChangeName());
				pstmt.setString(4, fileList.get(i).getFilePath());
				
				int level = 0;
				if(i == 0){
					level = 0;
				}else {
					level = 1;
				}
				pstmt.setInt(5, level);
				
				result += pstmt.executeUpdate(); //연산자 주의 for문 안이다. 누적이 되야한다.
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	public ArrayList<HashMap<String, Object>> selectEventList(Connection con) {
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;
		ResultSet rset = null;
		Statement stmt = null;
		
		String query = prop.getProperty("selectThumbnailMap");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()){
				hmap = new HashMap<String, Object>();
				
				hmap.put("eid", rset.getInt("eid"));
				hmap.put("ewriter", rset.getString("ewriter"));
				hmap.put("econtent", rset.getString("econtent"));
				hmap.put("sysdate", rset.getDate("sysdate"));
				hmap.put("ecount", rset.getInt("ecount"));
				hmap.put("ephoto", rset.getInt("ephoto"));
				hmap.put("etitle", rset.getString("etitle"));
				hmap.put("estatus", rset.getString("estatus"));
				hmap.put("esdate", rset.getDate("esdate"));
				hmap.put("eedate", rset.getDate("eedate"));
				hmap.put("eprice", rset.getInt("eprice"));
				
			
				list.add(hmap);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
		
	}

	

	

	
	
	
}
