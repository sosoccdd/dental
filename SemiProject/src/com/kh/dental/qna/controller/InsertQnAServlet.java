package com.kh.dental.qna.controller;

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
	
			String title = request.getParameter("title");
			String content =request.getParameter("content");
			
			if(ServletFileUpload.isMultipartContent(request)) {
				//용량 10MB
				int maxSize = 1024 * 1024 * 10;
				
				//파일 저장경로
			String root = request.getSession().getServletContext().getRealPath("/");
			String savePath = root +  "uploadFiles/QnAUploadFiles/";
			System.out.println(root);
			
			MultipartRequest multiRequest
				=new MultipartRequest(request, savePath,
						maxSize, "UTF-8", 
						new MyFileRenamePolicy());
			
			//파일이름 묶음
			ArrayList<String> saveFiles = new ArrayList<String>();
			
			//원본파일이름을 저장할 arraylist
			ArrayList<String> originFiles = new ArrayList<String>();
			
			Enumeration<String> files = multiRequest.getFileNames()	;
		
			while(files.hasMoreElements()) {
				
				String name = files.nextElement();
				System.out.println(name);
				
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
				
				System.out.println("filesystem : " + multiRequest.getFilesystemName(name));
				System.out.println("originFile : " + multiRequest.getOriginalFileName(name));
				
			}
			
				String multiTitle =multiRequest.getParameter("title");
				String multiContent =multiRequest.getParameter("content");
			
				QnA q = new QnA();
				q.setbTitle(multiTitle);
				q.setbContent(multiContent);
				HttpSession session = request.getSession();
				Member m = (Member)session.getAttribute("loginUser")	;
				String uno = String .valueOf(m); //수정
				q.setbWriter(uno);
				
				
				ArrayList<Attachment> fileList = new ArrayList<Attachment>();
				
				for(int i= originFiles.size()-1 ; i>=0; i--	) {
					Attachment at = new Attachment();
					at.setFilePath(savePath);
					at.setOriginName(originFiles.get(i));
					at.setChangeName(saveFiles.get(i));
					
					fileList.add(at);
				}
				
				int result= new QnAService().insertQnA(q,fileList);
				
				
				if(result>0) {
					
					
					
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
