package com.kh.dental.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.common.Attachment;
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

	

	public int insertQnA(QnA q, ArrayList<Attachment> fileList) {
	
		
		Connection con = getConnection();
		
		int result=0;
		int result1= new QnADao().insertQnA(con,q);
		
		if(result1>0) {
			
			int bid = new QnADao().selectCurrval(con);
		
			for(int i =0 ;i<fileList.size(); i++) {
					fileList.get(i).setBid(bid);
			}
		}
		
		int result2 = new QnADao().insertAttachment(con,fileList);
		
		if(result1 >0 && result2 == fileList.size()) {
			
			commit(con);
			result =1 ;
			
		}else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	
	
	
	
	}

}
