package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class ReservationDB {
	private static ReservationDB instance = new ReservationDB();
	public static ReservationDB getInstance() {
		return instance;
	}
	private ReservationDB() {}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	public boolean insertReservation(String time, String select, String day, String id ){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into reservation values "
					+ "(null,(select stu_num from member where mem_id = ?), ?, ?, ?) ");
			pstmt.setString(1, id);
			pstmt.setString(2, day);
			pstmt.setString(3, time);
			pstmt.setString(4, select);
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
	public String reservationCheck(String time, String room, String day){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String stu_num = "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select stu_num from reservation where res_time = ? and res_room = ? and res_day= ?");
			pstmt.setString(1, time);
			pstmt.setString(2, room);
			pstmt.setString(3, day);
			rs= pstmt.executeQuery();
			if(rs.next()){
				stu_num= rs.getString("stu_num");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return stu_num;
	}
	public String reservationStudy(int stu_num){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String stu_name = "";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select stu_name from study where stu_num = ?");
			pstmt.setInt(1, stu_num);
			rs= pstmt.executeQuery();
			if(rs.next()){
				stu_name= rs.getString("stu_name");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return stu_name;
	}
	
}
