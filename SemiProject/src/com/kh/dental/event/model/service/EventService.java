package com.kh.dental.event.model.service;

import com.kh.dental.common.Attachment;
import com.kh.dental.event.model.dao.EventDao;
import com.kh.dental.event.model.vo.Event;
import com.kh.dental.event.model.vo.Pay;

import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

public class EventService {

	public int insertEvent(Event e, ArrayList<Attachment> fileList) {
		System.out.println("EventService insertEvent e fileList " + e +" / " + fileList );
		
		Connection con = getConnection();
		int result = 0;
		
		//board에 insert
		int result1 = new EventDao().insertEvent(con, e);
		
		if(result1 > 0){
			int bid = new EventDao().selectCurrval(con);
			
			for(int i = 0; i < fileList.size(); i++){
				fileList.get(i).setBid(bid);
			}
		}
		
		int result2 = new EventDao().insertAttachment(con, fileList);
		if(result1 > 0 && result2 == fileList.size()){
			commit(con);
			result = 1;
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int insertPayInfo(Pay p) {
		System.out.println("EventService: p" + p);
		
		Connection con= getConnection();
		
		int result = new EventDao().insertPayInfo(con, p);
		
		if(result > 0 ) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<HashMap<String, Object>> selectEventList() {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new EventDao().selectEventList(con);
		
		close(con);
		
		return list;
	}


	

	


}
