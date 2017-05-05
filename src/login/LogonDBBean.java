package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
public class LogonDBBean {
	//static을 사용해 객체를 생성하면 객체 간의 전역 객체가 됨
	//따라서, 이 객체는 단 한번만 생성되고 객체들 간에 공유
	private static LogonDBBean instance = new LogonDBBean();
	public static LogonDBBean getInstance() {
		return instance;
	}
	private LogonDBBean() {}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	public int userCheck(String id, String passwd){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		int x=-1;
		try {
			conn = getConnection();
			String orgPass = passwd;
			pstmt = conn.prepareStatement(
					"select mem_pwd from member where mem_id = ?");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			if(rs.next()){//해당 아이디가 있으면 수행
				String dbpasswd= rs.getString("mem_pwd");
				if(dbpasswd.equals(orgPass))
					x= 1; //인증성공
				else
					x= 0; //비밀번호 틀림
			}else//해당 아이디 없으면 수행
				x= -1;//아이디 없음
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	//아이디 중복 확인 (confirmId.jsp)에서 아이디의 중복 여부를 확인하는 메소드
	public int confirmId(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		int x=-1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select mem_id from member where mem_id = ?");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			if(rs.next())//아이디 존재
				x= 1; //같은 아이디 있음
			else
				x= -1;//같은 아이디 없음
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	//회원 가입 처리(registerPro.jsp)에서 사용하는 새 레코드 추가 메소드
	public boolean insertMember(LogonDataBean member){
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag= false;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into member values (?,?,?,?,?,?,null)");
			pstmt.setString(1, member.getMem_id());
			pstmt.setString(2, member.getMem_pwd());		
			pstmt.setString(3, member.getMem_name());
			pstmt.setString(4, member.getMem_snum());
			pstmt.setString(5, member.getMem_bir());
			pstmt.setString(6, member.getMem_phone());
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