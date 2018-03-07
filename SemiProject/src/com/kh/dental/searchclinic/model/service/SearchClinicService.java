package com.kh.dental.searchclinic.model.service;

import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.searchclinic.model.dao.SearchClinicDao;
import com.kh.dental.searchclinic.model.vo.SearchClinic;

public class SearchClinicService {

	public ArrayList<SearchClinic> selectaddress(String sido, String gugun, String dong) {
		Connection con = getConnection();
		
		ArrayList<SearchClinic> list = new SearchClinicDao().selectaddress(con, sido, gugun, dong);
		
		close(con);
		
		
		return list;
	}

}
