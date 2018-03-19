package com.kh.dental.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dental.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertMemberCServlet
 */
@WebServlet("/insertC.me")
public class InsertMemberCServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberCServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//전송 파일 용량 제한 : 5M
		int maxSize = 1024 * 1024 * 5;
		
		//컨테이너의 루트 경로 추출
		String root = request.getSession().getServletContext().getRealPath("/");
		System.out.println(root);
		
		//파일 저장 경로 지정
		String savePath = root + "uploadFiles/CjoinImages/";
		System.out.println("savePath : " + savePath);
		//FileRenamePolicy 상속 후 오버라이딩
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
		//다중 파일을 묶어서 업로드를 하기 위해 컬렉션을 사용한다
		//저장한 파일 이름을 저장할 arrayList 생성
		ArrayList<String> saveFiles = new ArrayList<String>();
		System.out.println("saveFiles : " + saveFiles);
		
		//원본 파일의 이름을 저장할 arrayList를 생성
		ArrayList<String> originFiles = new ArrayList<String>();
		System.out.println("originFiles : " + originFiles);
		
		//파일이 전송된 폼의 이름을 반환한다
		Enumeration<String> files = multi.getFileNames();
		System.out.println("files : " + files);
		
		while(files.hasMoreElements()) {
			String name = files.nextElement();
			
			System.out.println("name : " + name);
			
			//저장된 경로에 저장된 파일 시스템의 이름을 가져와서 arrayList에 담는다.
			saveFiles.add(multi.getFilesystemName(name));
			originFiles.add(multi.getOriginalFileName(name));
			
			System.out.println("filesystem : " + multi.getFilesystemName(name));
			System.out.println("originFile : " + multi.getOriginalFileName(name));
			
			//multipartRequest 객체에서 파일 외의 값도 꺼내온다.
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
