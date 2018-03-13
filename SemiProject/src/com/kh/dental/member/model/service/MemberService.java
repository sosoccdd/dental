package com.kh.dental.member.model.service;

import com.kh.dental.member.model.dao.MemberDao;
import com.kh.dental.member.model.vo.Member;

import java.sql.Connection;

import static com.kh.dental.common.JDBCTemplet.*;
public class MemberService {
	
	//일반회원 로그인 처리용 메소드
	public Member loginCheck(String mId, String mPwd) {
		Connection con = getConnection();
		
		Member loginUser = new MemberDao().loginCheck(con, mId, mPwd);
		System.out.println("memberService : " + loginUser);
		close(con);
		
		return loginUser;
	}

}
