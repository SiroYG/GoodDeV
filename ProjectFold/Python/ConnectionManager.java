package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";	// JDBC driver 패키지명
	private static final String url = "jdbc:oracle:thin:@localhost:1521:XE";	// URL
	private static final String dbid = "hr";	// 데이터베이스 ID
	private static final String dbpw = "hr";	// 데이터베이스 비밀번호

	// JDBC 드라이버 로딩
	static {
		try{
			// 문자열로 클래스를 찾는다
			Class.forName(driver); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// 생성자를 private으로 설정한다
	// 이유: 단 하나의 객체만 생성하고 다른 어떤 이도 이 클래스를 계속 생성할 수 없게 막기 위함
	ConnectionManager() {}
		
	/**
	 * 드라이버 매니저로부터 Connection을 생성하여 반환한다
	 * @return Connection 객체
	 */
	public  Connection getConnection() {
		Connection con = null;
		try {
			// 드라이버 매니저를 이용하여 연결을 시도한다
			con = DriverManager.getConnection(url, dbid, dbpw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	/**
	 * Connection 연결을 종료한다 
	 * @param con Connection 객체
	 */
	public void close(Connection con) {
		try {
			// 매개변수로 입력받은 Connection 객체가 null이 아니라면 종료한다
			if (con != null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
