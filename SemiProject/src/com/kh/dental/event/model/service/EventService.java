package com.kh.dental.event.model.service;

import com.kh.dental.common.Attachment;
import com.kh.dental.event.model.dao.EventDao;
import com.kh.dental.event.model.vo.Event;
import com.kh.dental.event.model.vo.Pay;
import com.kh.dental.member.model.vo.Member;

import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

public class EventService {

	public int insertEvent(Event e, ArrayList<Attachment> fileList, Member loginUser) {
		System.out.println("EventService insertEvent e fileList " + e +" / " + fileList + "/ " + loginUser);
		
		Connection con = getConnection();
		int result = 0;
		int result1 = new EventDao().insertEvent(con, e);
		
		System.out.println("eventService insertEvent result1 " + result1);
			if(result1 > 0){
				int bid = new EventDao().selectCurrval(con);
				
				for(int i = 0; i < fileList.size(); i++){
					fileList.get(i).setBid(bid);
					//System.out.println("fileList.get(i).setBid(bid) : "  + fileList.get(i).setBid(bid));
				}
			}
		

		
		
		int cycle = 0;
		if(fileList.get(4).getOriginName() == null){
			if(fileList.get(3).getOriginName() == null){
				if(fileList.get(2).getOriginName() == null ){
					if(fileList.get(1).getOriginName() == null ){
						if(fileList.get(0).getOriginName() == null){
							cycle = 0;
						} else {
							cycle = 1;
						}
					}else {
						cycle = 2;
					}
				} else{
					cycle =3 ;
					
				}
			} else {
				cycle =4;
			}
		} else {
			cycle = 5;
		}
		
		//사진등록
		int result2 = new EventDao().insertAttachment(con, fileList, loginUser, cycle);
		
		System.out.println("eventService insertAttachment result2 " + result2);
		System.out.println(fileList.size());
		System.out.println("result2 == fileList.size() : " + (result2 == fileList.size()));

	
		
		if(result1 > 0 && result2 == cycle){
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
		System.out.println("EventService insertPayInfo result : " + result);
		
		
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
		System.out.println();
		System.out.println("EventService selectEventList list : " + list);
		close(con);
		
		return list;
	}

	


	public HashMap<String, Object> selectEventList(int num) {
		Connection con = getConnection();
		HashMap<String, Object> hmap = null;
		
		int result = new EventDao().updateCount(con, num);
		System.out.println("EventService selectEventList result : " + result );
		if(result > 0){
			commit(con);
			hmap = new EventDao().selectEventList(con, num);
			
		} else {
			rollback(con);
		}
		
		close(con);
		
		return hmap;
	}


	

	


}
