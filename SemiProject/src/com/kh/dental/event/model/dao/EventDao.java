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
import com.kh.dental.member.model.vo.Member;

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
			System.out.println(e.geteWriter() + "/" + e.geteContent()  + "/" + e.geteTitle()   + "/" +  e.geteSdate()  + "/" +  e.geteEdate()  );
			pstmt = con.prepareStatement(query);
			//SEQ_B_NO.NEXTVAL, ?, ?, SEQ_BE_NO.NEXTVAL, C, SYSDATE, DEFAULT, ?, ?, NULL, DEFAULT, NULL, NULL, ?, ?, NULL, NULL, DEFAULT, NULL, NULL
			
			/*pstmt.setString(1, e.geteWriter());
			pstmt.setString(2, e.geteTitle());
			pstmt.setInt(3, e.getePrice());
			pstmt.setDate(4, e.geteSdate());
			pstmt.setDate(5, e.geteEdate());
			pstmt.setString(6, e.getePhoto());
			pstmt.setString(7, e.geteContent());*/
			pstmt.setString(1, e.geteWriter());
			pstmt.setString(2, e.geteContent());
			pstmt.setString(3, e.geteTitle());
			pstmt.setDate(4, e.geteSdate());
			pstmt.setDate(5, e.geteEdate());
			
			
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
		System.out.println("EventDao insertPayInfo P : " + p);
		
		String query = prop.getProperty("insertPayInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, p.getApplyNum());
			pstmt.setString(2, p.getImpUid());
			pstmt.setString(3, p.getMerchant_uid());
			pstmt.setString(4, p.getPayMethod());
			pstmt.setInt(5, p.getPaidAmount());
			pstmt.setString(6, p.getPayName());
			pstmt.setString(7, p.getBuyerName());
			pstmt.setString(8, p.getBuyerTel());
			pstmt.setString(9, p.getBuyerAddr());
			
			result = pstmt.executeUpdate();
			System.out.println("eventDao result :" + result);
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
		System.out.println("EventDao selectcurrval con e: " + con );
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				bid = rset.getInt("CURRVAL");
				
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return bid;
	}

	public int insertAttachment(Connection con, ArrayList<Attachment> fileList,Member loginUser, int cycle) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		System.out.println("eventdao insertAttachment fileList : " + fileList);
		String query = prop.getProperty("insertAttachment");
		System.out.println("fileList.get(0).getOriginName() : "+fileList.get(0).getOriginName());
		System.out.println("fileList.get(1).getOriginName() : "+fileList.get(1).getOriginName());
		System.out.println("fileList.get(2).getOriginName() : "+fileList.get(2).getOriginName());
		System.out.println("fileList.get(3).getOriginName() : "+fileList.get(3).getOriginName());
		System.out.println("fileList.get(4).getOriginName() : "+fileList.get(4).getOriginName());
		
	
		
		System.out.println("eventDao cycle : " + cycle);
		System.out.println();
		System.out.println("dhhhhdjjj"+fileList.get(0).getBid());
		try {
			
			for(int i = 0; i < cycle; i++) {
				pstmt = con.prepareStatement(query);
				
				pstmt.setString(1, fileList.get(i).getFilePath());
				pstmt.setString(2, fileList.get(i).getOriginName());
				pstmt.setString(3, fileList.get(i).getChangeName());
				pstmt.setInt(4, loginUser.getmNo());
				pstmt.setInt(5, fileList.get(i).getBid());
				
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
		System.out.println();
		
		String query = prop.getProperty("selectEventList");
		System.out.println("evnetdao selectEventList "+ query);
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()){
				hmap = new HashMap<String, Object>();
				
				hmap.put("eid", rset.getInt("B_NO"));
				hmap.put("ewriter", rset.getString("B_WRITER"));
				hmap.put("econtent", rset.getString("B_CONTENT"));
				hmap.put("sysdate", rset.getDate("B_DATE"));
				hmap.put("ecount", rset.getInt("B_COUNT"));
				hmap.put("ephoto", rset.getInt("B_P_NO"));
				hmap.put("etitle", rset.getString("B_TITLE"));
				hmap.put("estatus", rset.getString("B_STATUS"));
				hmap.put("esdate", rset.getDate("START_DATE"));
				hmap.put("eedate", rset.getDate("END_DATE"));
				hmap.put("eprice", rset.getInt("P_PRICE"));
				hmap.put("fid", rset.getInt("P_NO"));
				hmap.put("originName", rset.getString("P_ORIGIN_NAME"));
				hmap.put("changeName", rset.getString("P_AFTER_NAME"));
				hmap.put("filePath", rset.getString("P_PATH"));
				
			
			
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

	public int updateCount(Connection con, int num) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			pstmt.setInt(2, num);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public HashMap<String, Object> selectEventList(Connection con, int num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		Event e  = null;
		Attachment at = null;
		ArrayList<Attachment> list = null;
		
		String query = prop.getProperty("selectEventOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Attachment>();
			
			while(rset.next()){
				
				e = new Event();
				
				e.seteWriter(rset.getString("B_WRITER"));
				e.seteContent(rset.getString("B_CONTENT"));
				e.seteCount(rset.getInt("B_COUNT"));
				e.seteTitle(rset.getString("B_TITLE"));
				e.seteSdate(rset.getDate("START_DATE"));
				e.seteEdate(rset.getDate("END_DATE"));
				e.setePrice(rset.getInt("P_PRICE"));
				//private String ePhoto;
				
				
				at = new Attachment();
				at.setFid(rset.getInt("p_no"));
				at.setFilePath(rset.getString("p_path"));
				at.setOriginName("p_origin_name");
				at.setChangeName("p_after_name");
				
			
				
				list.add(at);
				
			}
			
			hmap = new HashMap<String, Object>();
			
			hmap.put("event", e);
			hmap.put("attachment", list);
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return hmap;
	}

	

	

	
	
	
}
