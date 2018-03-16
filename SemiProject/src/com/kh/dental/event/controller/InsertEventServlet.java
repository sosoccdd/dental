package com.kh.dental.event.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dental.common.Attachment;
import com.kh.dental.common.MyFileRenamePolicy;
import com.kh.dental.event.model.service.EventService;
import com.kh.dental.event.model.vo.Event;
import com.kh.dental.family.model.vo.Family;
import com.kh.dental.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertEventServlet
 */
@WebServlet("/InsertEventServlet")
public class InsertEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public InsertEventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member loginUser = new Member();
		
		
		HttpSession session = request.getSession();
		loginUser= (Member)session.getAttribute("loginUser");
		System.out.println("insertEventServlet loginUser " + loginUser);
		
		
		System.out.println("InsertEventServlet : 테스트");
	
			//폼 전송을 multipart/form-data로 전송하는 경우에는
			//기존처럼 request.getParameter로 값을 받을 수 없다.
			//cos.jar라는 api를 이용하자. 파일도 받고 폼의 다른 값들도 받아주는 역할을 한다.
			//com.orelilly.servlet의 약자이다.
			
			if(ServletFileUpload.isMultipartContent(request)){
				//파일이 저장될 수 있는 맥시멈 사이즈 : 10Mbyte 제한한 경우
				int maxSize = 1024 * 1024 * 10; //10메가
				
				//사진을 저장할 경로를 찾기 위해 컨테이너의 루트 경로 추출
				String root = request.getSession().getServletContext().getRealPath("/");
				System.out.println("root : " +root);
				
				//파일을 저장할 경로 정하기
				String savePath = root + "event_uploadFiles/";
				//객체 생성시 파일을 저장하고 그에 대한 정보를 가져오는 형태
				//즉, 파일의 정보를 검사하여 저장하는 형태가 아닌 저장한 다음 검사 후 삭제를 해야한다.
				
				//사용자가 올린 파일명을 그대로 저장하지 않는 것이 일반적이다.
				//1. 같은 파일명이 있는 경우 이전 파일을 덮어 쓸 수 있다.
				//2. 한글로 된 파일명, 특수기호나 띄어쓰기 등은 서버에 따라 문제가 생길 수 있다.
				//DefaultFileRenamePolicy는 cos.jar안에 존재하는 클래스
				//같은 파일명이 존재하는지를 검사하고 있는 경우에는 파일명 뒤에 숫자를 붙여준다.
				//ex: aaa.zip, aaa1.zip, aaa2.zip 형태
				
				//DefaultFileRenamePolicy()
				/*MultipartRequest multiRequest 
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());*/
				
				//FileRenamePolicy상속 후 오버라이딩
				MultipartRequest multiRequest 
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
				
				//다중 파일을 묶어서 업로드 하기 위해 컬렉션을 사용한다.
				//저장한 파일 이름을 저장할 ArrayList생성
				ArrayList<String> saveFiles = new ArrayList<String>();
				
				//원본 파일의 이름을 저장할 ArrayList를 생성
				ArrayList<String> originFiles = new ArrayList<String>();
				
				//파일이 전송된 폼의 이름을 반환한다.
				Enumeration<String> files = multiRequest.getFileNames();

				System.out.println("files.hasMoreElements() : " + files.hasMoreElements());
				System.out.println("multiRequest.getFileNames() : " + multiRequest.getFileNames());
				while(files.hasMoreElements()){
					String name = files.nextElement();
					
					System.out.println("name : " + name);
				
					//지정한 경로에 저장된 파일 시스템의 이름을 가져와서
					//ArrayList에 담는다.
					
					saveFiles.add(multiRequest.getFilesystemName(name));
					originFiles.add(multiRequest.getOriginalFileName(name));
					
					System.out.println("filesystem : " + multiRequest.getFilesystemName(name));
					System.out.println("originFile : " + multiRequest.getOriginalFileName(name));
				}
				

				//multipartRequest객체에서 파일 외의 값도 꺼내온다.
				String multiEwriter = ((Member)request.getSession().getAttribute("loginUser")).getmName();
				String multiEname = multiRequest.getParameter("Ename");
				int multiEprice = Integer.parseInt(multiRequest.getParameter("Eprice"));
				String multiStemp = multiRequest.getParameter("Efrom");
				String multiEtemp = multiRequest.getParameter("Eto");
				
				System.out.println("multiEwriter : " + multiEwriter);
				System.out.println("multiEname : " + multiEname);
				System.out.println("multiEprice: " + multiEprice);
				System.out.println("multiStemp : " + multiStemp);
				System.out.println("multiEtemp : " + multiEtemp);
				
				Date Esdate = null;
				
				if(multiStemp != ""){
					String[] SdateArr = multiStemp.split("/");
					int[] Sdrr = new int[SdateArr.length];
					

					for(int i = 0 ; i < SdateArr.length; i++){
						System.out.println("SdateArr : " + SdateArr[i]);
						Sdrr[i] = Integer.parseInt(SdateArr[i]);
						System.out.println(Sdrr[i]);
					}
					int year = Sdrr[2];
					int month = Sdrr[0]-1;
					int day = Sdrr[1];
					
					System.out.println(year +"/"+month+ "/"+day);
					
					
					Esdate = new Date(new GregorianCalendar(year, month, day).getTimeInMillis());
				}else {
					Esdate = new Date(new GregorianCalendar().getTimeInMillis());
				}
				
				System.out.println("Esdate : " + Esdate);
				//종료
				Date Eedate = null;
				
				
				if(multiEtemp != ""){
					String[] EdateArr = multiEtemp.split("/");
					int[] Edrr = new int[EdateArr.length];
				
					for(int i = 0 ; i < EdateArr.length; i++){
						Edrr[i] = Integer.parseInt(EdateArr[i]);
						
					}
					int year = Edrr[2];
					int month = Edrr[0]-1;
					int day = Edrr[1];
					
					
					Eedate = new Date(new GregorianCalendar(year, month, day).getTimeInMillis());
				}else {
					Eedate = new Date(new GregorianCalendar().getTimeInMillis());
				}
			
				
				//if문으로 div 이미지 불러오고 배열에 담아주기.
			
				
				String multiEcontent = multiRequest.getParameter("Econtent");
				
				System.out.println(multiEwriter +" / " + multiEname +" / " + multiEprice 
						+" / " + Esdate +" / " + Eedate+" /" +  multiEcontent );
				
				//Board 객체 생성
				Event e = new Event();
				
				e.seteWriter(multiEwriter);
				e.seteTitle(multiEname);
				e.setePrice(multiEprice);
				
				e.seteSdate(Esdate);
				e.seteEdate(Eedate);
				e.seteContent(multiEcontent);
				HttpSession session1 = request.getSession();
				Member m = (Member)session1.getAttribute("loginUser");
				String mno = String.valueOf(m.getmNo());
				e.seteWriter(mno);
				
				
				
				System.out.println("insertEventServlet e" + e);
				
				//첨부파일의 정보를 저장할 ArrayList객체 생성
				ArrayList<Attachment> fileList = new ArrayList<Attachment>();
				
				//전송 순서 역순으로 파일이 Enumeration에 저장되기 때문에 반복문을 역으로 수행한다.
				for(int i = originFiles.size()-1; i >= 0; i--){
					Attachment at = new Attachment();
					
					at.setFilePath(savePath);
					at.setOriginName(originFiles.get(i));
					at.setChangeName(saveFiles.get(i));
					
					System.out.println(at);
					
					fileList.add(at);
				}
				
				System.out.println("insertEventServlet fileList "+fileList);
				
				//Service로 전송
				int result = new EventService().insertEvent(e, fileList, loginUser);
				
				System.out.println(" insertEventServlet result = " + result);
				if(result > 0){
				
					request.getRequestDispatcher("views/event/EventInsertSucess.jsp").forward(request, response);

				}else {
					//실패시 저장된 사진 삭제
					for(int i = 0; i < saveFiles.size(); i++){
						//파일 시스템에 저장된 이름으로 파일 객체 생성
						File failedFile = new File(savePath + saveFiles.get(i));
						
						System.out.println(failedFile);
						
						//failedFile.delete();
						//true or false return 삭제를 하면서 출력한다.
						System.out.println("failedFile = " + failedFile.delete());
					}
					//에러 페이지로 메세지 전달
					request.setAttribute("msg", "사진 게시판 등록 실패!");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
