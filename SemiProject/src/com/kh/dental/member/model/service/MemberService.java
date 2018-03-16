package com.kh.dental.member.model.service;

import com.kh.dental.common.Attachment;
import com.kh.dental.member.model.dao.MemberDao;
import com.kh.dental.member.model.vo.Member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import static com.kh.dental.common.JDBCTemplet.*;
import static com.kh.dental.common.JDBCTemplet.getConnection;

public class MemberService {

	// 일반회원 로그인 처리용 메소드
	public Member loginCheck(String mId, String mPwd) {
		Connection con = getConnection();

		Member loginUser = new MemberDao().loginCheck(con, mId, mPwd);
		System.out.println("memberService : " + loginUser);
		close(con);

		return loginUser;
	}

	// 아이디 중복체크 처리용 메소드
	public int idCheck(String mId) {
		Connection con = getConnection();

		int result = new MemberDao().idCheck(con, mId);

		close(con);

		return result;
	}

	// 일반 회원가입 처리용 메소드
	public int insertMember(Member m) {
		Connection con = getConnection();
		int result = new MemberDao().insertMember(con, m);

		if (result > 0)
			commit(con);
		else
			rollback(con);

		return result;
	}

	// 의사 회원가입 처리용 메소드
	public int insertDentist(Member m) {
		Connection con = getConnection();
		int result = new MemberDao().insertDentist(con, m);

		if (result > 0) commit(con);
		else rollback(con);

		return result;
	}
	//의사 회원가입 프로필 사진 등록 처리용 메소드
	public int insertProfile(Member m, ArrayList<Attachment> fileList) {
		Connection con = getConnection();
		int result = 0;
		
		int result1 = new MemberDao().insertDentist(con, m);
		
		if(result1 > 0) {
			int mNo = new MemberDao().selectCurrval(con);
			
			for(int i=0; i<fileList.size(); i++) {
				fileList.get(i).setMno(mNo);
			}
		}
		
		int result2 = new MemberDao().insertProfile(con, fileList);
		
		if(result2 == fileList.size()) {
			commit(con);
			result = 1;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
