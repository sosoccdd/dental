package com.kh.dental.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.dental.common.Attachment;
import com.kh.dental.member.model.vo.Member;
import com.kh.dental.qna.model.dao.QnADao;
import com.kh.dental.qna.model.vo.QnA;
import com.kh.dental.qna.model.vo.QnAPageInfo;

import static com.kh.dental.common.JDBCTemplet.*;
public class QnAService {

	

	public int getListCount() {
		Connection con = getConnection();
		int listCount = new QnADao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	

	public int insertQnA(Member m,QnA q, ArrayList<Attachment> fileList) {
	
		
		Connection con = getConnection();
		
		int result=0;
		int result1= new QnADao().insertQnA(con,q,m);
		System.out.println("SErvice에서 result1:"+result1);
		if(result1>0) {
			System.out.println("여기선 커밋?");
			commit(con);
			int bid = new QnADao().selectCurrval(con);
			
			System.out.println("BID :"+ bid);
			for(int i =0 ;i<fileList.size(); i++) {
					fileList.get(i).setBid(bid);
					
			}
		}
		
		int result2 = new QnADao().insertAttachment(m,q,con,fileList);
		System.out.println("SErvice에서 result2:"+result2);
		if(result1 >0 || result2 == fileList.size()) {
			System.out.println("커밋?");
			commit(con);
			result =1 ;
			
		}else {
			System.out.println("롤백?");
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	
	
	
	
	}



	public int insertAnswer(Member m,QnA q,String multiContent, ArrayList<Attachment> fileList) {
		
		Connection con = getConnection();
		
		int result =new QnADao().insertAnswer(con,m,q);
		
		
		if(result!=0){
			commit(con);
			result=1;
			
			int tNo= new QnADao().selectCurrval2(con);
			
			
			
			int putPic = new QnADao().insertAnswerPic(con,m,fileList,tNo);
			
			if(putPic>0){
				
				commit(con);
				
			}else{
				
				
				rollback(con);
				
			}
			
			
		}else{
			
			rollback(con);
			
		}
		close(con);
		
		return result;
	}



	public ArrayList<QnA> selectQnAList(int currentPage, int pageNum) {
		
		Connection con = getConnection();
		
		ArrayList<QnA> list = new QnADao().selectQnAList(con,currentPage,pageNum);
		
		close(con);
			
		return list;
	
	}







	public ArrayList<HashMap<String, Object>> selectQnAImage() {
		
		Connection con = getConnection();
		
		ArrayList<HashMap<String,Object>> list =  new QnADao().selectQnAImage(con);
		
	    close(con);
		
		
		return list;
	}



	public ArrayList<HashMap<String, Object>> selectDocInfo() {
		Connection con = getConnection();
		
		ArrayList<HashMap<String,Object>> list = new QnADao().selectDocInfo(con);
		
		close(con);
		return null;
	}



	public QnA getQContent(Member m ,QnA q) {
	
		Connection con = getConnection();
		
		
		
		QnA qContent = new QnADao().getQContent(q,con);
		
	 
		int updateCount = new QnADao().updateCount(con,q);
		
		
		if(updateCount >0){
			System.out.println("Z커밋?");
			commit(con);
			
			
		}else{
			System.out.println("롤백?");
			rollback(con);
			
		}
		
		close(con);
		
		return qContent;
	}



	public QnA getDocInfo(Member m, QnA q) {
	
		Connection con =getConnection();
		
//		QnA doc = new QnADao().getDocInfo(m,con,q);
		
		close(con);
		
		
		return null;
//		return doc;
	}



	public ArrayList<Attachment> getQPic(Member m, QnA q) {

		Connection con = getConnection();
		
		ArrayList<Attachment> getQPic = new QnADao().getQPic(con,m,q);
		
		close(con);
		
		return getQPic;
	}

}



