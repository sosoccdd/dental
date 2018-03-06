package com.kh.dental.member.model.service;

import com.kh.dental.member.model.dao.MemberDao;
import com.kh.dental.member.model.vo.Member;

import java.sql.Connection;

import static com.kh.dental.common.JDBCTemplet.*;
public class MemberService {
	
	//로그인 처리용 메소드
	public Member GloginCheck(String mId, String mPwd) {
		Connection con = getConnection();
		
		Member loginUser = new MemberDao().GloginCheck(con, mId, mPwd);
		System.out.println("memberService : " + loginUser);
		close(con);
		
		return loginUser;
	}

/*	public Member DloginCheck(String mId, String mPwd, String mType) {
		Connection con = getConnection();
		
		Member loginUser = new MemberDao().DloginCheck(con, mId, mPwd, mType);
		
		close(con);
		
		return loginUser;
	}*/



}
