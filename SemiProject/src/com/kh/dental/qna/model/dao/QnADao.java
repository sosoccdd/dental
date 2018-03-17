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

import javax.swing.plaf.synth.SynthSpinnerUI;

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
		pstmt.setString(1, m.getmId());
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
				pstmt.setInt(5, m.getmNo());
				
				
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
		System.out.println("GDgd");
		PreparedStatement pstmt =null;
		int result =0 ;
		
			
		String query= prop.getProperty("insertAnswer");
		System.out.println("insertAnswer : " + query);
		try {
			System.out.println("in dao m!!!!!!!!!!!!!!!!: "+m);
			System.out.println("q!!!!!!!!!!!!!!!!!!: "+q);
//			--작성자ID,내용, 제목,참조글번호
			pstmt= con.prepareStatement(query);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, q.getbContent());
			pstmt.setString(3, q.getbTitle());
			pstmt.setInt(4, q.getbNo());
			result= pstmt.executeUpdate();
		
		} catch (SQLException e) {
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
				q.setbNo(rset.getInt("b_no"));
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
				
				hmap.put("path", rset.getString("p_path"));
				hmap.put("afterName",rset.getString("p_after_name"));
				
				
				
				
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
				
				hmap.put("mId", rset.getString("m_id"));
				hmap.put("dPoint", rset.getString("d_point"));
				hmap.put("fName", rset.getString("f_name"));
				
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


	public QnA getQContent(QnA q, Connection con,int currentPage,int contentNum1) {


		
			PreparedStatement pstmt = null;
			ResultSet rset =null;
			String query = prop.getProperty("getQInfo");
			
			try {
				
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, q.getbNo());
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
		int result=0;
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, q.getbNo());
			pstmt.setInt(2, q.getbNo());
			
			result=pstmt.executeUpdate();
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			
			close(pstmt);
			
		}
		
		
				
		
		
		
		return result;
	}


	public ArrayList<HashMap<String,Object>> getDocInfo(Connection con,QnA q,int currentPage,int pageNum1) {


		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
		HashMap<String,Object> hmap =null;
		
		String query = prop.getProperty("getDoc");
		int startRow =(currentPage -1) * pageNum1 +1	;
		int endRow = startRow +pageNum1 -1;
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, q.getbNo());
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()){
//			B.B_NO,B.B_WRITER, B.B_CONTENT, B.B_DATE,M.D_POINT,F.F_NAME,B.B_TNO
			hmap=	new HashMap<String,Object>();
			hmap.put("dBNo", rset.getInt("b_no"));
			hmap.put("dBWriter", rset.getString("b_writer"));
			hmap.put("dBContent", rset.getString("b_content"));
			hmap.put("dBDate", rset.getDate("b_date"));
			hmap.put("DDPoint", rset.getInt("d_point"));
			hmap.put("dFName", rset.getString("f_name"));
			hmap.put("dBTNo", rset.getInt("b_tno"));
			
			
			list.add(hmap);
			
				
			}
			System.out.println("의사정보 List: "+list);
			
			return list;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(pstmt);
			close(rset);
			
			
			
		}
		
		
		
		
		
		
		
		return list;
	}


	public ArrayList<Attachment> getQPic(Connection con, Member m, QnA q) {
	
		PreparedStatement pstmt = null;
		ArrayList<Attachment> list = new ArrayList<Attachment>();
		ResultSet rset= null;
		Attachment at =new Attachment();
		String query = prop.getProperty("getQPicInfo");
		
		
		try {
			pstmt= con.prepareStatement(query);

			
			rset=pstmt.executeQuery();
			
		
			while(rset.next()){
				
				at.setChangeName(rset.getString("p_after_name"));
				
				
				list.add(at);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(pstmt);
			close(rset);
			
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
			pstmt.setInt(4, m.getmNo());
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
		int BNo = 0;
		
		String query = prop.getProperty("selectCurrval2");
		//쿼리문생성
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()){
				BNo = rset.getInt("currval");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return BNo;
	}


	@SuppressWarnings("unused")
	public ArrayList<Attachment> getAPic(Connection con, Member m, QnA q) {

		PreparedStatement pstmt= null;
		ResultSet rset = null;
		ArrayList<Attachment> list = new ArrayList<Attachment>();
		Attachment at = new Attachment();
		String query = prop.getProperty("getAPic");
		
		try {
			pstmt= con.prepareStatement(query);

			
			rset=pstmt.executeQuery();
			
			while(rset.next()){
				
				at.setChangeName(rset.getString("p_after_name"));
				
				list.add(at);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			close(pstmt);
			close(rset);
			
		}
		
		return list;
	}


	public ArrayList<Attachment> getDPhoto(int refNum,Connection con) {


		PreparedStatement pstmt =null;
		ResultSet rset =null;
		Attachment at = new Attachment();
		ArrayList<Attachment> list = new ArrayList<Attachment>();
		
		String query = prop.getProperty("getDPhoto");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, refNum);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()){
				
				at.setChangeName(rset.getString("p_after_name"));
				
				list.add(at);
				
			}
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			close(rset);
			close(pstmt);
			
			
		}
		
		
		
		
		
		
		
		return list;
	}


	public int insertReply(Connection con,String content, Member m,int tno) {
	
		PreparedStatement pstmt = null;
		int result =0;
		
		String query = prop.getProperty("insertReply");
		try {
//      ID,내용,참조글번호
		pstmt= con.prepareStatement(query);
		pstmt.setString(1, m.getmId());
		pstmt.setString(2, content);
		pstmt.setInt(3, tno);
		
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		close(pstmt);
	}
		return result;
		
		
	}


	public QnA getReply(Connection con, int tno) {
		
		QnA q = new QnA();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
	try {
		String query = prop.getProperty("getReply");
		
		pstmt=con.prepareStatement(query);
		pstmt.setInt(1, tno);
		rset=pstmt.executeQuery();
		
		while(rset.next()){
			
			q.setbContent(rset.getString("b_content"));
			q.setbDate(rset.getDate("b_date"));
			
			
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rset);
		}
		
		
		
		return q;
	}


	@SuppressWarnings("unused")
	public ArrayList<QnA> getReplyPage(Connection con, int refNum, int currentPage, int pageNum2) {
		
		
		
		PreparedStatement pstmt= null;
		ResultSet rset =null;
		ArrayList<QnA> list = null;
		String query = prop.getProperty("ReplyPagination");
		QnA reply = new QnA();
		int startRow =(currentPage -1) * pageNum2 +1	;
		int endRow = startRow +pageNum2 -1;
		
		
		
		try {
			pstmt =con.prepareStatement(query);
			pstmt.setInt(1, refNum);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			pstmt.executeQuery();
			
			if(rset!=null){
			while(rset.next()){
				
				reply.setbTitle(rset.getString("b_writer"));
				reply.setbContent(rset.getString("b_content"));
				reply.setbDate(rset.getDate("b_date"));
				
				list.add(reply);
			}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			
			close(pstmt);
			close(rset);
			
			
		}
		
		
		
		return list;
	}


	public int getAnsList(Connection con ,int getbNo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		int result=0;
		String query = prop.getProperty("listCountAns");
		
		try {
			pstmt= con.prepareStatement(query);
			pstmt.setInt(1, getbNo);
		
			
			rset=pstmt.executeQuery();
			
			
			while(rset.next()){
				
				result=rset.getInt(1);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			close(pstmt);
			close(rset);
		}
		
		
		
		
		
		
		return result;
	}


	public int getRepNum(Connection con, int getbNo) {

		
			PreparedStatement pstmt =null;
			ResultSet rset = null;
			
			String query = prop.getProperty("listCountRep");
			int result = 0;
			try {
				pstmt=con.prepareStatement(query);
				pstmt.setInt(1, getbNo);
				
				rset =pstmt.executeQuery();
				
				while(rset.next()){
					
					
					result = rset.getInt(1);
					
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				
				close(pstmt);
				close(rset);
				
			}
			
		
		
		
		
		
		
		return result;
	}



}
