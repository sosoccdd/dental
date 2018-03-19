package com.kh.dental.mypage.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.dental.mypage.model.vo.CRlist;
import com.kh.dental.mypage.model.vo.Dual;
import com.kh.dental.mypage.model.vo.RMember;
import com.kh.dental.mypage.model.vo.Res;
import com.kh.dental.mypage.model.vo.StarPoint;
import com.sun.xml.internal.fastinfoset.Decoder;

import static com.kh.dental.common.JDBCTemplet.*;

public class MypageDao {
   
   private Properties prop = new Properties();
   
   public MypageDao(){
      
      String fileName = MypageDao.class.getResource("/sql/mypage/mypage-query.properties").getPath();
      System.out.println(fileName);
      try {
         prop.load(new FileReader(fileName));
         
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
   public int updatePwd(Connection con, String userId, String pwd) {
      
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = prop.getProperty("updatePwd");
      
      System.out.println(userId);
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, pwd);
         pstmt.setString(2, userId);
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
      
      return result;
   }
   
   public int getListCount(Connection con, String userName) {
      PreparedStatement pstmt = null;
      int listCount = 0;
      ResultSet rset = null;
      
      String query = prop.getProperty("listCount");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, userName);
         rset = pstmt.executeQuery();
         
         if(rset.next()){
            listCount = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return listCount;
   }

   public ArrayList<Dual> selectList(Connection con, int currentPage, int limit, String userName) {
      //페이징처리 전
            //Statement stmt = null;
            
            //페이징처리 후
            PreparedStatement pstmt = null;
            ResultSet rset = null;
            ArrayList<Dual> list = null;
            
            String query = prop.getProperty("selectList");
            
            try {
               //페이징처리 전
               /*stmt = con.createStatement();
               rset = stmt.executeQuery(query);*/
               
               //페이징처리 후
               pstmt = con.prepareStatement(query);
               
               //조회 시작할 행 번호와 마지막 행 번호 계산
               int startRow = (currentPage - 1) * limit + 1;
               int endRow = startRow + limit - 1;
               pstmt.setInt(1, startRow);
               pstmt.setInt(2, endRow);
               pstmt.setString(3, userName);
               
               rset = pstmt.executeQuery();
               
               list = new ArrayList<Dual>();
               
               while(rset.next()){
                  Dual b = new Dual();
                  
                  b.setBtype(rset.getInt("b_type"));
                  b.setBno(rset.getInt("b_no"));
                  b.setBtitle(rset.getString("b_title"));
                  b.setBcontent(rset.getString("b_content"));
                  b.setBcount(rset.getInt("b_count"));
                  b.setBdate(rset.getDate("b_date"));
                  b.setBstatus(rset.getString("b_status"));
                  
                  list.add(b);
               }
               
            } catch (SQLException e) {
               e.printStackTrace();
            } finally {
               close(rset);
               close(pstmt);
            }
            
            return list;
   }
   
   

   public int insertDual(Connection con, Dual d) {
      
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = prop.getProperty("insertDual");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, d.getBwriter());
         pstmt.setString(2, d.getBcontent());
         pstmt.setString(3, d.getBtitle());
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
      return result;
   }

   
   
   
   public ArrayList<StarPoint> selectStar(Connection con, String userid) {
      
      ArrayList<StarPoint> list = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      StarPoint sp = null;
      
      String query = prop.getProperty("selectStar");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, userid);
         
         rset = pstmt.executeQuery();
         
         list = new ArrayList<StarPoint>();
         
         if(rset != null){
            while(rset.next()){
               sp = new StarPoint();
               
               sp.setBno(rset.getInt("b_no"));
               sp.setBwriter(rset.getString("b_writer"));
               sp.setStartpt(rset.getInt("start_pt"));
               sp.setYkiho_enc(rset.getString("yadm_nm"));
               sp.setBdate(rset.getDate("b_date"));
               list.add(sp);
            }
         }
         System.out.println("Dao" +list);
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return list;
   }

   public int getListCountD(Connection con, String userName) {
      PreparedStatement pstmt = null;
      int listCount = 0;
      ResultSet rset = null;
      
      String query = prop.getProperty("listCount");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, userName);
         rset = pstmt.executeQuery();
         
         if(rset.next()){
            listCount = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return listCount;
   }

   public ArrayList<Dual> selectListD(Connection con, int currentPage, int limit, String userName) {
      //페이징처리 전
      //Statement stmt = null;
      
      //페이징처리 후
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Dual> list = null;
      
      String query = prop.getProperty("selectListD");
      
      try {
         //페이징처리 전
         /*stmt = con.createStatement();
         rset = stmt.executeQuery(query);*/
         
         //페이징처리 후
         pstmt = con.prepareStatement(query);
         
         //조회 시작할 행 번호와 마지막 행 번호 계산
         int startRow = (currentPage - 1) * limit + 1;
         int endRow = startRow + limit - 1;
         pstmt.setInt(1, startRow);
         pstmt.setInt(2, endRow);
         pstmt.setString(3, userName);
         
         rset = pstmt.executeQuery();
         
         list = new ArrayList<Dual>();
         
         while(rset.next()){
            Dual b = new Dual();
            
            b.setBtype(rset.getInt("b_type"));
            b.setBno(rset.getInt("b_no"));
            b.setBtitle(rset.getString("b_title"));
            b.setBcontent(rset.getString("b_content"));
            b.setBcount(rset.getInt("b_count"));
            b.setBdate(rset.getDate("b_date"));
            b.setBstatus(rset.getString("b_status"));
            
            list.add(b);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return list;
   
   }

   public ArrayList<Dual> selectDualD(Connection con, String userName) {
      ArrayList<Dual> list = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      Dual da = null;
      
      String query = prop.getProperty("selectDualD");
      
      try {
         pstmt = con.prepareStatement(query);
         
         rset = pstmt.executeQuery();
         
         list = new ArrayList<Dual>();
         
         if(rset != null){
            while(rset.next()){
               da = new Dual();
               
               da.setBno(rset.getInt("b_no"));
               da.setBtitle(rset.getString("b_title"));
               da.setBcontent(rset.getString("b_content"));
               da.setBstatus(rset.getString("status"));
               da.setBdate(rset.getDate("b_date"));
               
               list.add(da);
            }
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return list;
   
   
   
   }

   public int getListCountN(Connection con, String userName) {
      PreparedStatement pstmt = null;
      int listCount = 0;
      ResultSet rset = null;
      
      String query = prop.getProperty("listCountN");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, userName);
         rset = pstmt.executeQuery();
         
         if(rset.next()){
            listCount = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return listCount;
   
   
   }

   public ArrayList<Dual> selectListN(Connection con, int currentPage, int limit, String userName) {
      
      //페이징처리 후
            PreparedStatement pstmt = null;
            ResultSet rset = null;
            ArrayList<Dual> list = null;
            
            String query = prop.getProperty("selectDualN");
            
            try {
               //페이징처리 전
               /*stmt = con.createStatement();
               rset = stmt.executeQuery(query);*/
               
               //페이징처리 후
               pstmt = con.prepareStatement(query);
               
               //조회 시작할 행 번호와 마지막 행 번호 계산
               int startRow = (currentPage - 1) * limit + 1;
               int endRow = startRow + limit - 1;
               
               pstmt.setString(1, userName);
               pstmt.setInt(2, startRow);
               pstmt.setInt(3, endRow);
               
               rset = pstmt.executeQuery();
               
               list = new ArrayList<Dual>();
               
               while(rset.next()){
                  Dual da = new Dual();
                  
                  da.setBno(rset.getInt("b_no"));
                  da.setBtitle(rset.getString("b_title"));
                  da.setBcontent(rset.getString("b_content"));
                  da.setBstatus(rset.getString("b_status"));
                  da.setBdate(rset.getDate("b_date"));
                  
                  list.add(da);
               }
               
            } catch (SQLException e) {
               e.printStackTrace();
            } finally {
               close(rset);
               close(pstmt);
            }
            return list;
   
   
   }

   public int getListCountR(Connection con, String hosCd) {
      
      PreparedStatement pstmt = null;
      int listCount = 0;
      ResultSet rset = null;
      
      String query = prop.getProperty("listCountR");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, hosCd);
         
         rset = pstmt.executeQuery();
         
         if(rset.next()){
            listCount = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return listCount;
   }

   public ArrayList<Res> selectListR(Connection con, int currentPage, int limit, String hosCd) {
      
      //페이징처리 후
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Res> list = null;
      
      String query = prop.getProperty("selectResR");
      
      try {
         
         //페이징처리 후
         pstmt = con.prepareStatement(query);
         
         //조회 시작할 행 번호와 마지막 행 번호 계산
         int startRow = (currentPage - 1) * limit + 1;
         int endRow = startRow + limit - 1;
         pstmt.setString(1, hosCd);
         pstmt.setInt(2, startRow);
         pstmt.setInt(3, endRow);
         
         rset = pstmt.executeQuery();
         
         list = new ArrayList<Res>();
         
         while(rset.next()){
            Res r = new Res();
            
            r.setRno(rset.getInt("r_no"));
            r.setRtime(rset.getString("r_time"));
            r.setF_num(rset.getInt("f_num"));
            r.setF_name(rset.getString("f_name"));
            r.setR_status(rset.getString("r_status"));
            r.setMno(rset.getInt("m_no"));
            r.setEtc(rset.getString("etc"));
            
            list.add(r);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      return list;
   
   
   }

   public String hospitalCd(Connection con, int loginNo) {
      
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String result = "";
      String query = prop.getProperty("hospitalCd"); 
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setInt(1, loginNo);
         
         rset = pstmt.executeQuery();
         
         if(rset.next()){
            result = rset.getString("YKIHO_ENC");
         }
         System.out.println("rset.getString('YKIHO_ENC') "+rset.getString("YKIHO_ENC"));
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return result;
   }

   public int listCountRmember(Connection con, String mno) {
      
      PreparedStatement pstmt = null;
      int listCount = 0;
      ResultSet rset = null;
      
      String query = prop.getProperty("listCountRmember");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, mno);
         
         rset = pstmt.executeQuery();
         
         if(rset.next()){
            listCount = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      
      return listCount;
   }

   public ArrayList<RMember> selectRMemberList(Connection con, int currentPage, int limit, String mno) {
      
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<RMember> list = null;
      RMember r = null;
      
      String query = prop.getProperty("selectRMember");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setInt(1, Integer.parseInt(mno));
         pstmt.setInt(2, currentPage);
         pstmt.setInt(3, limit);
         
         rset = pstmt.executeQuery();
         
         if(rset != null){
            list = new ArrayList<RMember>();
            while(rset.next()){
               r = new RMember();
               
               r.setStatus(rset.getString("r_status"));
               r.setmName(rset.getString("m_name"));
               r.setFname(rset.getString("f_name"));
               
               list.add(r);
               
            }
            System.out.println("콘틍롤!!!11"+list);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return list;
   }

   public ArrayList<CRlist> selectCRlist(Connection con, String rid) {
      
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<CRlist> list = null;
      CRlist cr = null;
      String query = prop.getProperty("selectCRlist");
      
      try {
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, rid);
         
         rset = pstmt.executeQuery();
         
         if(rset != null){
            list = new ArrayList<CRlist>();
            while(rset.next()){
               cr = new CRlist();
               
               cr.setHosName(rset.getString("yadm_nm"));
               cr.setR_date(rset.getString("r_date"));
               cr.setR_time(rset.getString("r_time"));
               cr.setEtc(rset.getString("etc"));
               cr.setMno(rset.getInt("m_no"));
                  
               list.add(cr);
            }
            System.out.println("asfkzjsxmfhf"+list);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return list;
   }

   

}























