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
		//System.out.println("memberService : " + loginUser);
		close(con);
		
		return loginUser;
	}
	
	//아이디 중복체크 처리용 메소드
	public int idCheck(String mId) {
		Connection con = getConnection();
		
		int result = new MemberDao().idCheck(con, mId);
		
		close(con);
		
		return result;
	}

	//회원가입 처리용 메소드
	public int insertMember(Member m) {
		Connection con = getConnection();
		int result = new MemberDao().insertMember(con, m);

		if(result > 0 ) commit(con);
		else rollback(con);
		
		return result;
	}

}
