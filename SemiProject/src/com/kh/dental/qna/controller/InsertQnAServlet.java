package com.kh.dental.qna.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dental.common.Attachment;
import com.kh.dental.common.MyFileRenamePolicy;
import com.kh.dental.member.model.vo.Member;
import com.kh.dental.qna.model.service.QnAService;
import com.kh.dental.qna.model.vo.QnA;
import com.oreilly.servlet.MultipartRequest;
import com.sun.java_cup.internal.runtime.Symbol;

/**
 * Servlet implementation class InsertQnAServlet
 */
@WebServlet("/InsertQnAServlet")
public class InsertQnAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQnAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(ServletFileUpload.isMultipartContent(request)){
			//전송 파일 용량 제한 : 10Mbyte 제한한 경우
			int maxSize = 1024 * 1024 * 10;
			
			//컨테이너의 루트 경로 추출
			String root = request.getSession().getServletContext().getRealPath("/");
			System.out.println(root);
			
			//파일을 저장할 경로 지정
			String savePath = root +"uploadFiles/questionImgFile";
			
			//객체 생성시 파일을 저장하고 그에 대한 정보를 가져오는 형태
			//즉, 파일의 정보를 검사하여 저장하는 형태가 아닌
			//저장한 다음 검사 후 삭제를 해야 한다.
			
			//사용자가 올린 파일명을 그대로 저장하지 않는 것이 일반적이다.
			//1. 같은 파일명이 있는 경우 이전 파일을 덮어 쓸 수 있음
			//2. 한글로 된 파일명, 특수기호나 띄어쓰기 등은 
			//   서버에 따라 문제가 생길수 도 있다.
			//DefaultFileRenamePolicy는 cos.jar안에 존재하는 클래스
			//같은 파일명이 존재하는지를 검사하고 있는 경우에는
			//파일명 뒤에 숫자를 붙여준다.
			//ex : aaa.zip, aaa1.zip, aaa2.zip
			
			//DefaultFileRenamePolicy
			//MultipartRequest multiRequest 
			//= new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			//FileRenamePolicy상속 후 오버라이딩
			MultipartRequest multiRequest 
			= new MultipartRequest(request, savePath, 
					maxSize, "UTF-8",
					new MyFileRenamePolicy());
			
			//다중파	일을 묶어서 업로드를 하기 위해 컬렉션을 사용한다.
			//저장한 파일 이름을 저장할 arrayList 생성
			ArrayList<String> saveFiles = new ArrayList<String>();
			
			//원본 파일의 이름을 저장할 arrayList를 생성
			ArrayList<String> originFiles = new ArrayList<String>();
			
			//파일이 전송된 폼의 이름을 반환한다
			Enumeration<String> files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()){
		
				String name = files.nextElement();
				
				System.out.println(name);
				
				//지정한 경로에 저장된 파일 시스템의 이름을 가져와서 
				//arrayList에 담는다.
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
				
				System.out.println("filesystem : " + multiRequest.getFilesystemName(name));
				System.out.println("originFile : " + multiRequest.getOriginalFileName(name));
			}
			
			//multipartReqeust객체에서 파일 외의 값도 꺼내온다
			String multiTitle = multiRequest.getParameter("title");
			String multiContent = multiRequest.getParameter("content");
			
			System.out.println(multiTitle);
			System.out.println(multiContent);
			
				
				QnA q = new QnA();
				q.setbTitle(multiTitle);
				q.setbContent(multiContent);
				HttpSession session = request.getSession();
				Member m = (Member)session.getAttribute("loginUser")	;
				
				
				//첨부파일의 정보를 저장할 arrayList객체 생성
				ArrayList<Attachment> fileList = new ArrayList<Attachment>();
				//전송 순서 역순으로 파일이 Enumeration에 저장되기 때문에
				//반복문을 역으로 수행함
				for(int i = originFiles.size() - 1; i >= 0; i--){
					Attachment at = new Attachment();
					at.setFilePath(savePath);
					at.setOriginName(originFiles.get(i));
					at.setChangeName(saveFiles.get(i));
					
					System.out.println(at);
					fileList.add(at);
				}
				
				int result= new QnAService().insertQnA(m,q,fileList);
				
				
				if(result>0) {
					System.out.println("여긴오나ㅇ피ㅡ");
					response.sendRedirect(request.getContextPath()+"/EnterQnAServlet");
					
				}else{
					
					System.out.println("전솔릴");
					for(int i =0; i<saveFiles.size();i++){
					
						File failedFile = new File(savePath +saveFiles.get(i));
						failedFile.delete();
				
				}
					request.setAttribute("msg", "등록실패!");
					request.getRequestDispatcher("weewe.jsp").forward(request, response);
					
				}
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
