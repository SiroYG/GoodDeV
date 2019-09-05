package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Patent;


public class PatentDaoManager{
	private ConnectionManager cm;

	public PatentDaoManager() {
		cm = new ConnectionManager();
	}

	
	
	public boolean insertPatent(Patent patent) throws SQLException {
		Connection conn = cm.getConnection();
		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO PATENT(");
		sb.append("patentNum, patentName, patentHolderName, patentContent, patenttype, patentAppDate, patentRegdate)");
		sb.append("  VALUES(?,?,?,?,?,?,?) ");
		PreparedStatement pstmt = conn.prepareStatement(sb.toString());
		pstmt.setString(1, patent.getPatentNum());
		pstmt.setString(2, patent.getPatentName());
		pstmt.setString(3, patent.getPatentHolderName());
		pstmt.setString(4, patent.getPatentContent());
		pstmt.setString(5, patent.getPatenttype());
		pstmt.setString(6, patent.getPatentAppDate());
		pstmt.setString(7, patent.getPatentRegdate());
		int row = pstmt.executeUpdate();
		boolean flag = false;
		if (row == 1) {
			flag = true;
		}
		if (pstmt != null)
			pstmt.close();
		cm.close(conn);
		return flag;
	}

	

}