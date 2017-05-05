package study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import login.LogonDataBean;
public class StudyDBBean {
	//static을 사용해 객체를 생성하면 객체 간의 전역 객체가 됨
	//따라서, 이 객체는 단 한번만 생성되고 객체들 간에 공유
	private static StudyDBBean instance = new StudyDBBean();
	public static StudyDBBean getInstance() {
		return instance;
	}
	private StudyDBBean() {}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	public boolean confirmId(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		boolean x= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select mem_id from member where mem_id = ?");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			if(rs.next())//아이디 존재
				x= true; //같은 아이디 있음
			else
				x= false;//같은 아이디 없음
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	
	public boolean insertStudy(String stu_code, String stu_name,int stu_time){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into study values (null,?,false,?,?)");
			pstmt.setString(1, stu_code);
			pstmt.setInt(2, stu_time);
			pstmt.setString(3, stu_name);
			if (pstmt.executeUpdate() == 1)
				flag = true;
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return flag;
	}
	public int confirmStudyNum(String stu_name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		int x= 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select stu_num from study where stu_name = ?");
			pstmt.setString(1, stu_name);
			rs= pstmt.executeQuery();
			while(rs.next()){
				x = rs.getInt(1);
			}
				
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	public boolean insertStudyMember(int stu_num,String stu_mem){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("update member set stu_num = ? where mem_id = ?");
			pstmt.setInt(1, stu_num);
			pstmt.setString(2, stu_mem);
			if (pstmt.executeUpdate() == 1)
				flag = true;
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return flag;
	}
	
}