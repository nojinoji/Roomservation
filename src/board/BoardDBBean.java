package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import login.LogonDataBean;

public class BoardDBBean {
	//static을 사용해 객체를 생성하면 객체 간의 전역 객체가 됨
	//따라서, 이 객체는 단 한번만 생성되고 객체들 간에 공유
	private static BoardDBBean instance = new BoardDBBean();
	public static BoardDBBean getInstance() {
		return instance;
	}
	private BoardDBBean() {}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	public ArrayList<BoardBean> selectBoard(){
		ArrayList<BoardBean> list = new ArrayList<BoardBean>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String study= "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select idx, title, stu_name, reg_date from board");
			rs= pstmt.executeQuery();
			while(rs.next()){
				BoardBean board = new BoardBean();  
				board.setIdx(rs.getInt("idx"));
				board.setTitle(rs.getString("title"));
				board.setStu_name(rs.getString("stu_name"));
				board.setReg_date(rs.getString("reg_date"));
				
				list.add(board);
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return list;

	}
	public void insertBoard(String stu_name, String title, String content){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert board(stu_name, title, reg_date, content) value(?,?,now(),?)  ");
			pstmt.setString(1, stu_name);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.executeUpdate();
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}

	}
	
	public String checkStudy(int stu_num){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String study= "";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT stu_name from study where stu_num =? ");
			pstmt.setInt(1, stu_num);
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
	public int memberCheck(String id){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		int stu_num = 0;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT stu_num from member where mem_id =? ");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				stu_num= rs.getInt("stu_num");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return stu_num;

	}
	public String bringTitle(int idx){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String title= "";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT title from board where idx =? ");
			pstmt.setInt(1, idx);
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				title= rs.getString("title");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return title;

	}
	
	public String bringContent(int idx){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String content= "";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT content from board where idx =? ");
			pstmt.setInt(1, idx);
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				content= rs.getString("content");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return content;

	}
	
	public void modify(int idx, String title, String content){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("UPDATE board set title =?, content=? where idx = ? ");
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, idx);
			pstmt.executeUpdate();
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}

	}
	
	public void delete(int idx){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("DELETE from board where idx=? ");
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}

	}
	
}

