package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn; // 데이터베이스에 접근하기 위한 객체
	private PreparedStatement pstmt;
	private ResultSet rs; // 정보를 담을 수 있는 변수를 생성

	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/jsptest?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "8888";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	public int login(String userID, String userPass) {
		String SQL = "SELECT USERPASS FROM USER WHERE USERID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPass))
					return 1; // login
				else
					return 0;// pass wrong
			}
			return -1; // no id
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // data error
	}

	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserId());
			pstmt.setString(3, user.getUserPass());
			pstmt.setString(4, user.getUserResident());
			pstmt.setString(5, user.getUserEmail());
			pstmt.setString(6, user.getUserPhone());
			pstmt.setString(7, user.getUserAdress());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}
