package com.kh.dental.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dental.member.model.service.MemberService;
import com.kh.dental.member.model.vo.Member;
import com.kh.dental.common.Attachment;
import com.kh.dental.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertMemberDServlet
 */
@WebServlet("/insertD.me")
public class InsertMemberDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertMemberDServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//전송 파일 용량 제한 : 5Mbyte 제한한 경우
		int maxSize = 1024 * 1024 * 5;
		
		//컨테이너의 루트 경로 추출
		String root = request.getSession().getServletContext().getRealPath("/");
		System.out.println(root);

		//파일을 저장할 경로 지정
		String savePath = root + "uploadFiles/profileImgFile/";
		System.out.println("savePath(저장된 경로) : " + savePath);
		//FileRenamePolicy상속 후 오버라이딩
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
		//다중파일을 묶어서 업로드를 하기 위해 컬렉션을 사용한다.
		//저장한 파일 이름을 저장할  arrayList 생섯
		ArrayList<String> saveFiles  = new ArrayList<String>();
		System.out.println("saveFiles(저장된 파일명) : " + saveFiles);
		
		//원본 파일의 이름을 저장할 arrayList를 생성
		ArrayList<String> originFiles = new ArrayList<String>();
		System.out.println("originFiles(기존 파일명) : " + originFiles);
		
		//파일이 전송된 폼의 이름을 반환한다
		Enumeration<String> files = multiRequest.getFileNames();
		System.out.println("files(전송된 파일 폼) : " + files);
		
		while(files.hasMoreElements()){
			String name = files.nextElement();
			
			System.out.println("name??? " + name);
			
			//저장된 경로에 저장된 파일 시스템의 이름을 가져와서 arrayList에 담는다.
			saveFiles.add(multiRequest.getFilesystemName(name));
			originFiles.add(multiRequest.getOriginalFileName(name));
			
			System.out.println("filesystem 이거뭐지?: " + multiRequest.getFilesystemName(name));
			System.out.println("originFile 모르겠네: " + multiRequest.getOriginalFileName(name));

			
			//multipartRequest 객체에서 파일 외의 값도 꺼내온다.
			String mId = multiRequest.getParameter("mId");
			String mName = multiRequest.getParameter("mName");
			String mPwd = multiRequest.getParameter("mPwd");
			String addr = multiRequest.getParameter("address");
			String addr2 = multiRequest.getParameter("address2");
			String address = addr + ", " + addr2;
			String phone = multiRequest.getParameter("phone");
			String gender = multiRequest.getParameter("gender");
			String type = "D";
			String fNum = multiRequest.getParameter("field");
			String hosGender = gender;
			String[] hosEtcArr = multiRequest.getParameterValues("carCon");
			String hosEtc = "";
			for (int i = 0; i < hosEtcArr.length; i++) {
				if(i == 0 ) hosEtc = hosEtcArr[i];
				else hosEtc += ", " + hosEtcArr[i];
			}
			String dLincenceNo = multiRequest.getParameter("licence");

			//member 객체 생성
			Member m = new Member();
			
			// setter로 값 전달
			m.setmId(mId);
			m.setmName(mName);
			m.setmPwd(mPwd);
			m.setAddress(address);
			m.setPhone(phone);
			m.setGender(gender);
			m.setType(type);
			m.setfNum(Integer.parseInt(fNum));
			m.setHosGender(hosGender);
			m.setHosEtc(hosEtc);
			m.setDLincenceNo(Integer.parseInt(dLincenceNo));
			

			HttpSession session = request.getSession();
			int mNo = m.getmNo();
			m.setmNo(mNo);
			
			//첨부파일의 정보를 저장할 arrayList객체 생성
			ArrayList<Attachment> fileList = new ArrayList<Attachment>();
			//전송 순서 역순으로 파일이 Enumeration에 저장되기 때문에 반복문을 역으로 수행함
			for(int i = originFiles.size() - 1; i >= 0; i--){
				Attachment at = new Attachment();
				at.setFilePath(savePath);
				at.setOriginName(originFiles.get(i));
				at.setChangeName(saveFiles.get(i));
				
				System.out.println(at);
				fileList.add(at);
			}
			
			
			//Service로 (회원가입)전달
			int result = new MemberService().insertDentist(m);
			int profile = new MemberService().insertProfile(m, fileList);
			
			// 페이지 연결
			String page = "";
			if(result > 0 && profile > 0) {
				page = "views/member/Success.jsp";
			} else {
				//실패시 저장된 사진 삭제
				for(int i=0; i<saveFiles.size(); i++) {
					//파일 시스템에 저장된 이름으로 파일 객체 생성
					File failedFile = new File(savePath + saveFiles.get(i));

					System.out.println(failedFile);
					
					//failedFile.delete();
					//true, false 리턴함
					System.out.println(failedFile.delete());
				}
				page = "views/member/error.jsp";
				request.setAttribute("msg", "회원 가입이 승인되지 않았습니다.");
			}
			
			//에러페이지로 메세지 전달
			RequestDispatcher view = request.getRequestDispatcher(page);
			view.forward(request, response);

		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
