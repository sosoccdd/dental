package com.kh.dental.searchclinic.model.dao;


import static com.kh.dental.common.JDBCTemplet.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.dental.searchclinic.model.vo.Res;
public class SearchRDao {

	private Properties prop = new Properties();
	
	public SearchRDao(){
		String fileName = SearchRDao.class.getResource("/sql/searchclinic/searchR-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));

		
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public ArrayList<Res> searchRList(Connection con, String hosName) {
		
		PreparedStatement pstmt = null;
		ArrayList<Res> list = new ArrayList<Res>();
		ResultSet rset = null;
		Res r = null;
		
		String query = prop.getProperty("selectRList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, hosName);
			
			rset = pstmt.executeQuery();
			
			if(rset != null){
				while(rset.next()){
					r = new Res();
					
					r.setEtc(rset.getString("etc"));
					r.setF_num(rset.getInt("f_num"));
					r.setM_no(rset.getInt("m_no"));
					r.setR_time(rset.getString("r_time"));
					r.setR_status(rset.getString("r_status"));
					r.setRno(rset.getInt("r_no"));
					
					list.add(r);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}
