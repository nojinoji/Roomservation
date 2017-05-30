package check;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CheckDBBean {
	//static을 사용해 객체를 생성하면 객체 간의 전역 객체가 됨
	//따라서, 이 객체는 단 한번만 생성되고 객체들 간에 공유
	private static CheckDBBean instance = new CheckDBBean();
	
	public static CheckDBBean getInstance() {
		return instance;
	}
	
	private CheckDBBean() {}
	
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	public String CheckStudy(String id ){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String study= "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select stu_name from study where stu_num = (select stu_num from member where mem_id = ? )");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			if(rs.next()){
				study= rs.getString("stu_name");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return study;

	}
	
	
	public void Check(String study){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("update study set stu_enter = 1 where stu_name = ?");
			pstmt.setString(1, study);
			
			if (pstmt.executeUpdate() == 1)
				flag = true;
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		
	}
	
	public void unCheck(String study){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("update study set stu_enter = 0 where stu_name = ?");
			pstmt.setString(1, study);
			
			if (pstmt.executeUpdate() == 1)
				flag = true;
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
	}
	
	public int time(String study){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		int stu_time =0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select time from study where stu_name = ?");
			pstmt.setString(1, study);
			
			rs= pstmt.executeQuery();
			if(rs.next()){
				stu_time= rs.getInt("time");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return stu_time;
	}
	
	public void timeCalculate(int time,String study){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("update study set time = ? where stu_name = ?");
			pstmt.setInt(1, time);
			pstmt.setString(2, study);
			
			if (pstmt.executeUpdate() == 1){
				flag = true;
			}
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
	}
	
	public boolean checkCheck(String study){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		boolean flag = false;
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select stu_enter from study where stu_name = ? ");
			pstmt.setString(1, study);
			
			rs= pstmt.executeQuery();
			if(rs.next()){
				flag= rs.getBoolean("stu_enter");
			}
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return flag;
	}
}