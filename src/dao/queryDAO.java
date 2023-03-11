package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import model.QueryBeans;

public class queryDAO {
	private final String JDBC_URL = "jdbc:h2:tcp://localhost/~/Order";
	private final String DB_USER = "sa";
	private final String DB_PASS = "";

	public boolean create(QueryBeans QB) {
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			Timestamp timestamp = new Timestamp(Calendar.getInstance().getTimeInMillis() - 1000*60*60*24);
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String time = simpleDateFormat.format(timestamp);

			String sql = "INSERT INTO QUERY (name, email, option, detail, time) VALUES (?,?,?,?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, QB.getName());
			pStmt.setString(2, QB.getEmail());
			pStmt.setString(3, QB.getOption());
			pStmt.setString(4, QB.getDetail());
			pStmt.setString(5, time);

			int result = pStmt.executeUpdate();
			if (result != 1) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;

	}
}
