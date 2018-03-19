package com.kh.dental.admin.model.service;

import static com.kh.dental.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dental.admin.model.dao.AdminDao;
import com.kh.dental.admin.model.vo.Admin;
import com.kh.dental.admin.model.vo.AdminBoard;
import com.kh.dental.admin.model.vo.AdminEvent;
import com.kh.dental.member.model.vo.Member;

public class AdminService {

	public Admin loginCheck(String userId, String userPwd) {
		Connection con = getConnection();
		
		Admin loginUser = new AdminDao().loginCheck(con, userId, userPwd);
		System.out.println(loginUser);
		close(con);
		
		return loginUser;
	}

	public int getListCount() {
		 Connection con = getConnection();
	      int listCount = new AdminDao().getListCount(con);
	      
	      close(con);
	      return listCount;
	}

	public ArrayList<Admin> NmemberselectList(int currentPage, int limit) {
		  Connection con = getConnection();
	      ArrayList<Admin> list=new AdminDao().NmemberselectList(con,currentPage,limit);
	      
	      close(con);
	      return list;
	}

	public int getDmemberListCount() {
		  Connection con = getConnection();
	      int listCount = new AdminDao().getDmemberListCount(con);
	      
	      close(con);
	      return listCount;
	}

	public ArrayList<Admin> DmemberselectList(int currentPage, int limit) {
		  Connection con = getConnection();
	      ArrayList<Admin> list=new AdminDao().DmemberselectList(con,currentPage,limit);
	      
	      close(con);
	      return list;
	}

	public int getCmemberListCount() {
		Connection con = getConnection();
	      int listCount = new AdminDao().getCmemberListCount(con);
	      
	      close(con);
	      return listCount;
	}
	public ArrayList<Admin> CmemberselectList(int currentPage, int limit) {
		  Connection con = getConnection();
	      ArrayList<Admin> list=new AdminDao().CmemberselectList(con,currentPage,limit);
	      
	      close(con);
	      return list;
	}

	public int UpdateNmember(Member m) {
		Connection con = getConnection();
		
		int result = new AdminDao().UpdateNmember(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	public int UpdateCmember(Member m) {
		Connection con = getConnection();
		
		int result = new AdminDao().UpdateCmember(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	public int UpdateDmember(Member m) {
		Connection con = getConnection();
		
		int result = new AdminDao().UpdateDmember(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	public int getBoEvListCount() {
		Connection con = getConnection();
	      int listCount = new AdminDao().getBoEvListCount(con);
	      
	      close(con);
	      return listCount;
	}

	public ArrayList<AdminEvent> BoEvselectList(int currentPage, int limit) {
		Connection con = getConnection();
		ArrayList<AdminEvent> list=new AdminDao().BoEvselectList(con,currentPage,limit);

		close(con);
		return list;
	}

	public int UpdateBoEv(AdminEvent m) {
		Connection con = getConnection();
		
		int result = new AdminDao().UpdateBoEv(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;

	}

	public int getHelpListCount() {
		Connection con = getConnection();
	    int listCount = new AdminDao().getHelpListCount(con);
	      
	    close(con);
	    return listCount;
	}

	public ArrayList<AdminEvent> HelpselectList(int currentPage, int limit) {
		Connection con = getConnection();
		ArrayList<AdminEvent> list=new AdminDao().HelpselectList(con,currentPage,limit);

		close(con);
		return list;
	}

	public int UpdateHelp(AdminEvent m) {
		Connection con = getConnection();
		
		int result = new AdminDao().UpdateHelp(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	public int getApprovalListCount() {
		 Connection con = getConnection();
	      int listCount = new AdminDao().getApprovalListCount(con);
	      
	      close(con);
	      return listCount;
	}

	public ArrayList<Admin> ApprovalselectList(int currentPage, int limit) {
		Connection con = getConnection();
	      ArrayList<Admin> list=new AdminDao().ApprovalselectList(con,currentPage,limit);
	      
	      close(con);
	      return list;
	}

	public int UpdateApproval(Member m) {
		Connection con = getConnection();
		
		int result = new AdminDao().UpdateApproval(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}


}
