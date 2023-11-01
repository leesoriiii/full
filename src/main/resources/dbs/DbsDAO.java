package dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DbsDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public DbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/dbs";
			String dbID = "root";
			String dbPassword = "jdbc:mysql://localhost:3306/dbs";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}
		
		
	public int getNest() {
		String SQL = "SELECT dbsID FROM FROM dbs ORDER BY dbsID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
		
	}
	public int write(String dbsTitle, String userName, String dbsContent) {
		String SQL = "INSERT INTO dbs VALUE (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNest());
			pstmt.setString(2, dbsTitle);
			pstmt.setString(3, userName);
			pstmt.setString(4, getDate());
			pstmt.setString(5, dbsContent);
			pstmt.setInt(6, 1);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
		
	}
	
	
	
	
}
