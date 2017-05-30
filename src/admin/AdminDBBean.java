package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import login.LogonDataBean;

public class AdminDBBean {
	//static을 사용해 객체를 생성하면 객체 간의 전역 객체가 됨
	//따라서, 이 객체는 단 한번만 생성되고 객체들 간에 공유
	private static AdminDBBean instance = new AdminDBBean();
	public static AdminDBBean getInstance() {
		return instance;
	}
	private AdminDBBean() {}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	public ArrayList<MemberDataBean> selectMember(){
		ArrayList<MemberDataBean> list = new ArrayList<MemberDataBean>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String study= "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select mem_id, mem_name, mem_snum, mem_bir, mem_phone, stu_num from member");
			rs= pstmt.executeQuery();
			while(rs.next()){
				MemberDataBean member = new MemberDataBean();  
				member.setMem_id(rs.getString("mem_id"));
				member.setMem_name(rs.getString("mem_name"));
				member.setMem_snum(rs.getString("mem_snum"));
				member.setMem_bir(rs.getString("mem_bir"));
				member.setMem_phone(rs.getString("mem_phone"));
				member.setStu_num(rs.getInt("stu_num"));
				
				list.add(member);
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return list;

	}
	public String CheckStudy(int stu_num ){
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
	
	public ArrayList<ReservationDataBean> selectReservation(){
		ArrayList<ReservationDataBean> list = new ArrayList<ReservationDataBean>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String study= "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select stu_num, res_time, res_day from reservation");
			rs= pstmt.executeQuery();
			while(rs.next()){
				ReservationDataBean reservation = new ReservationDataBean();  
				reservation.setStu_num(rs.getInt("stu_num"));
				reservation.setRes_time(rs.getInt("res_time"));
				reservation.setRes_day(rs.getString("res_day"));
				
				list.add(reservation);
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return list;

	}
	
	public ArrayList<CheckDataBean> selectCheck(){
		ArrayList<CheckDataBean> list = new ArrayList<CheckDataBean>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String study= "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select stu_name, time, stu_code ,stu_enter from study");
			rs= pstmt.executeQuery();
			while(rs.next()){
				CheckDataBean check = new CheckDataBean();  
				check.setStu_name(rs.getString("stu_name"));
				check.setTime(rs.getInt("time"));
				check.setStu_code(rs.getString("stu_code"));
				check.setStu_enter(rs.getInt("stu_enter"));
				
				list.add(check);
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return list;

	}
	
}
