package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import model.OrderBeans;

public class salesDAO {
	private final String JDBC_URL = "jdbc:h2:tcp://localhost/~/Order";
	private final String DB_USER = "sa";
	private final String DB_PASS = "";

	public List<OrderBeans> findAll() {
		List<OrderBeans> order = new ArrayList<>();

		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			String sql = "SELECT * FROM \"ORDER\" ORDER BY id DESC";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("ID");
				int karubi = rs.getInt("karubi");
				int ros = rs.getInt("ros");
				int harami = rs.getInt("harami");
				int tan = rs.getInt("tan");
				int rice = rs.getInt("rice");
				int veg = rs.getInt("veg");
				int total = rs.getInt("total");
				String time = rs.getString("time");

				OrderBeans beans = new OrderBeans(id, karubi, ros, harami, tan, rice, veg);
				beans.setTotal(total);
				beans.setTime(time);

				order.add(beans);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return order;
	}

	public boolean create(OrderBeans beans) {
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			Timestamp timestamp = new Timestamp(Calendar.getInstance().getTimeInMillis() - 1000*60*60*24);
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String time = simpleDateFormat.format(timestamp);

			String sql = "INSERT INTO \"ORDER\" (karubi, ros, harami, tan, rice, veg, total, time) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, beans.getKarubinum());
			pStmt.setInt(2, beans.getRosnum());
			pStmt.setInt(3, beans.getRicenum());
			pStmt.setInt(4, beans.getTannum());
			pStmt.setInt(5, beans.getRicenum());
			pStmt.setInt(6, beans.getVegnum());
			pStmt.setInt(7, beans.getTotal());
			pStmt.setString( 8, time);

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
