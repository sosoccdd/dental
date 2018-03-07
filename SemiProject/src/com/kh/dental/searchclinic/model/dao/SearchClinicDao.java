package com.kh.dental.searchclinic.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.dental.common.JDBCTemplet.*;
import com.kh.dental.searchclinic.model.vo.SearchClinic;

public class SearchClinicDao {
	private Properties prop = new Properties();
	
	public SearchClinicDao() {
		String fileName = SearchClinicDao.class.getResource("/sql/searchclinic/searchclinic-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<SearchClinic> selectaddress(Connection con, String sido, String gugun, String dong) {
		ArrayList<SearchClinic> list=new ArrayList<SearchClinic>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		System.out.println(sido+"-----"+gugun+"-----"+dong);
		String query = prop.getProperty("selectaddres");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, sido);
			pstmt.setString(2, gugun);
			pstmt.setString(3, dong);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				SearchClinic sc = new SearchClinic();
				sc.setYkiho_enc(rset.getString("YKIHO_ENC"));
				sc.setYadm_nm(rset.getString("YADM_NM"));
				sc.setAddr(rset.getString("ADDR"));
				sc.setTelno(rset.getString("TELNO"));
				sc.setX_pos(rset.getString("X_POS_WGS84"));
				sc.setY_pos(rset.getString("Y_POS_WGS84"));
				sc.setStatus(rset.getString("STATUS"));
				list.add(sc);
			}
			System.out.println(list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		
		
		return list;
	}

}
