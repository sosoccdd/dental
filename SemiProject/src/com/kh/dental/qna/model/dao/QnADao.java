package com.kh.dental.qna.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Executable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import static com.kh.dental.common.JDBCTemplet.*;

import com.kh.dental.qna.model.vo.QnA;
import com.kh.dental.qna.model.vo.QnAPageInfo;
import com.kh.dental.member.model.dao.MemberDao;
import com.kh.dental.common.Attachment;
import com.kh.dental.member.model.vo.Member;

public class QnADao {
	
	private Properties prop = new Properties();
	
	public QnADao(){
		String fileName = QnADao.class.getResource("/sql/qna/qna-query.properties").getPath();
		System.out.println("fileName : " + fileName);
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
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





	public int insertQnA(Connection con, QnA q,Member m) {
		
	PreparedStatement pstmt = null;
	int result= 0;
	
	String query = prop.getProperty("insertQnAContent");
	
	
	try {
		
		System.out.println(q.getbContent());
		System.out.println(q.getbTitle());
//		작성자ID, 내용, 제목, 
		pstmt= con.prepareStatement(query);
		pstmt.setString(1, "ADMIN");
		pstmt.setString(2, q.getbContent());
		pstmt.setString(3,q.getbTitle());
		
		result = pstmt.executeUpdate();
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		
		close(pstmt);
		
	}
		System.out.println("result :" +result);
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

	public int insertAttachment(Member m,QnA q ,Connection con, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println("fileList::::"+fileList);
		String query = prop.getProperty("insertAttachment");
		
		try {
			for(int i = 0; i < fileList.size(); i++){

				/*
				사진파일경로
				사진원본명
				사진변경명
				종류
				회원번호
				*/
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, fileList.get(i).getFilePath());
				pstmt.setString(2, fileList.get(i).getOriginName());
				pstmt.setString(3, fileList.get(i).getChangeName());
				pstmt.setInt(4, 1);
				pstmt.setInt(5, 1);
				
				
				result += pstmt.executeUpdate();
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		
		return result;
	}


	public int insertAnswer(Connection con, Member m, QnA q) {
		
		PreparedStatement pstmt =null;
		int result =0 ;
		
		String query= prop.getProperty("insertAnswer");
		
		try {
//			--작성자ID,내용, 제목,참조글번호
			pstmt= con.prepareStatement(query);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2,q.getbContent());
			pstmt.setString(3, q.getbTitle());
			pstmt.setInt(4,q.gettNo());
			
			result= pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			
		}
		return result;
		
		
	}


	public ArrayList<QnA> selectQnAList(Connection con,int currentPage, int pageNum) {
	
		PreparedStatement pstmt= null;
	
		
		ArrayList<QnA> list= new ArrayList<QnA>();
		
		ResultSet rset = null;
		
		
		String query1 = prop.getProperty("selectQnA1");
		
		int startRow =(currentPage -1) * pageNum +1	;
		int endRow = startRow +pageNum -1;
		
		
		try {
			pstmt=con.prepareStatement(query1);
			
			System.out.println("query1 : " + query1);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
		
			
			
			while(rset.next()){
				QnA q = new QnA();
//				B_TITLE,B_CONTENT, B_TNO,B_DATE,B_COUNT,B_WRITER
				q.setbContent(rset.getString("b_content"));
				q.settNo(rset.getInt("b_tno"));
				q.setbDate(rset.getDate("b_date"));
				q.setbCount(rset.getInt("b_count"));
				q.setbTitle(rset.getString("b_title"));
				q.setbWriter(rset.getString("b_writer"));
				
				
				/*SELECT B_TITLE,B_WRITER,B_CONTENT, B_TNO,B_DATE,B_COUNT*/
				
				
				
				list.add(q);
		
			}
			
			
		
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			
			close(rset);
			close(pstmt);
		
		}
		
		System.out.println("이 페이지에서 list 는 :"+list);
		
		
		return list;
	}


	public ArrayList<HashMap<String, Object>> selectQnAImage(Connection con) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String,Object>> list= new ArrayList<HashMap<String,Object>>();
		
		HashMap<String,Object> hmap= new HashMap<String,Object>();
		String query =prop.getProperty("selectQnA2");
		
		try {
			pstmt=con.prepareStatement(query);
			rset=pstmt.executeQuery();
			while(rset.next()){
				
				hmap.put("path", "p_path");
				hmap.put("afterName","p_after_name");
				
				
				
				
				list.add(hmap);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(rset);
			close(pstmt);
			
		}
		
				
				
		
		
		
		
		System.out.println("사진쪽 DAO:" +list);
		return list;
	}


	public ArrayList<HashMap<String, Object>> selectDocInfo(Connection con) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
		HashMap<String,Object> hmap = new HashMap<String,Object>();
		
		
		String query = prop.getProperty("selectQnA3");
		
		
		try {
			pstmt = con.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			while(rset.next()){
				
				hmap.put("mId", "m_id");
				hmap.put("dPoint", "d_point");
				hmap.put("fName", "f_name");
				
				list.add(hmap);
				
				
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(pstmt);
			close(rset);
			
		}
		
		
		
		System.out.println("DocInfo 의 Dao:"+list);
		return list;
	}


	public QnA getQContent(QnA q, Connection con) {


		
			PreparedStatement pstmt = null;
			ResultSet rset =null;
			String query = prop.getProperty("getQInfo");	
			System.out.println("q.getNo() : "+q.gettNo());
			try {
				
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, q.gettNo());
				
				rset=pstmt.executeQuery();
				
				while(rset.next()){
//					SELECT B.B_NO, B_WRITER , B_CONTENT ,B_TNO, B_DATE, B_COUNT ,B_TITLE
					q.setbNo(rset.getInt("b_no"));
					q.setbWriter(rset.getString("b_writer"));
					q.setbContent(rset.getString("b_content"));
					q.setbTitle(rset.getString("b_tno"));
					q.setbDate(rset.getDate("b_date"));
					q.setbCount(rset.getInt("b_count"));
					q.setbTitle(rset.getString("b_title"));
					
					
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				
				close(pstmt);
				close(rset);
				
			}
		
		
		
		
		return q;
	}


	public int updateCount( Connection con, QnA q) {

		
		
		PreparedStatement pstmt = null;
		String query= prop.getProperty("updateCount");
		
		int count= q.getbCount();
		int countUp=count++;
		System.out.println(countUp);
		System.out.println(count);
		
		System.out.println(q.gettNo()+"tNo이고 이건"+q.getbNo()+" 이건 bno야 ");
		
		System.out.println(q);
		int result=0;
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, q.gettNo());
			pstmt.setInt(2, q.gettNo());
			
			result=pstmt.executeUpdate();
			System.out.println("들어왔사");
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			
			close(pstmt);
			
		}
		
		
				
		
		
		
		return result;
	}


//	public QnA getDocInfo(Member m, Connection con,QnA q) {

/*
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("getDoc");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, q.gettNo());
			
			rset=pstmt.executeQuery();
			
			while(rset.next()){
//	 M_NO,M_ID,M_NAME,F_NAME,D_POINT ,B_CONTENT,B_DATE,B_TITLE,P_PATH,P_AFTER_NAME 
				hmap= new HashMap<String,Object>();
				
				hmap.put("dNo", rset.getString("m_no"));
				hmap.put("dId", rset.getString("m_id"));
				hmap.put("dName", rset.getString("m_name"));
				hmap.put("fName", rset.getString("f_name"));
				hmap.put("dPoint", rset.getInt("d_point"));
				hmap.put("dContent", rset.getString("b_content"));
				hmap.put("dDate", rset.getDate("b_date"));
				hmap.put("dTitle", rset.getString("b_title"));
				hmap.put("dpPath", rset.getString("p_path"));
				hmap.put("dpAfterName", rset.getString("p_afterName"));
				doc.add(hmap);
				
			}
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(pstmt);
			close(rset);
			
			
			
		}
		
		
		
		
		
		
		
		return doc;*/
//	}


	public ArrayList<Attachment> getQPic(Connection con, Member m, QnA q) {
	
		PreparedStatement pstmt = null;
		ArrayList<Attachment> list = new ArrayList<Attachment>();
		ResultSet rset= null;
		Attachment at =new Attachment();
		String query = prop.getProperty("getQPicInfo");
		
		
		try {
			pstmt= con.prepareStatement(query);
			pstmt.setInt(1, q.gettNo());
			
			rset=pstmt.executeQuery();
			
			
			while(rset.next()){
				
				at.setChangeName(rset.getString("p_after_name"));
				
				
				list.add(at);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}


	public int insertAnswerPic(Connection con, Member m, ArrayList<Attachment> fileList ,int tNo) {
		
		PreparedStatement pstmt = null;
		String query = prop.getProperty("insertAnsPIc");
		Attachment at = new Attachment();
		int result= 0;
	
		
		try {
//			사진파일경로, 사진원본명 , 사진변경명 , 회원번호 ,글번호
			for(int i =0 ; i<fileList.size();i++){
			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, fileList.get(i).getFilePath());
			pstmt.setString(2, fileList.get(i).getOriginName());
			pstmt.setString(3, fileList.get(i).getChangeName());
			pstmt.setInt(4, 23);
			pstmt.setInt(5, tNo);

			result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(pstmt);
			
			
		}
		
		
		
		return result;
	}


	public int selectCurrval2(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		int tNo = 0;
		
		String query = prop.getProperty("selectCurrval2");
		//쿼리문생성
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				tNo = rset.getInt("currval");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return tNo;
	}

}
