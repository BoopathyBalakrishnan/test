package com.rural;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

	private Connection conn;

	public UserDao() {
		conn = ConnectionProvider.getConnection();
	}

	/*public void addUser(EmployeeBean userBean) {
		try {
			String sql = "INSERT INTO users(userid, firstname,lastname)"
					+ " VALUES (?, ?, ? )";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, userBean.getId());
			ps.setString(2, userBean.getfName());
			ps.setString(3, userBean.getlName());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}*/

	public void removeUser(int userId) {
		try {
			String sql = "DELETE FROM empinformation WHERE userid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/*public void editUser(EmployeeBean userBean) {
		try {
			String sql = "UPDATE users SET firstname=?, lastname=?"
					+ " WHERE userid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userBean.getfName());
			ps.setString(2, userBean.getlName());
			ps.setInt(3, userBean.getId());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}*/

	public List getAllUsers() {
		List users = new ArrayList();
		try {
			String sql = "SELECT * FROM empinformation";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				EmployeeBean userBean = new EmployeeBean();
				userBean.setEmpid(rs.getString("employeeid"));
				userBean.setEmpname(rs.getString("employeename"));
				userBean.setEmpaddress(rs.getString("employeeaddress"));
				userBean.setEmpchallenged(rs.getString("challenged"));
				userBean.setEmpdob(rs.getString("employeedob"));
				userBean.setEmpblood(rs.getString("empbloddgroup"));
				userBean.setEmpcaste(rs.getString("employeecaste"));
				userBean.setEmpwardno(rs.getString("employeewardno"));
				userBean.setEmpaccno(rs.getString("employeeaccno"));
				userBean.setEmpVilage(rs.getString("empvillage"));
				userBean.setEmpBlock(rs.getString("empblock"));
				users.add(userBean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	public EmployeeBean getUserById(int userId) {
		EmployeeBean userBean = new EmployeeBean();
		try {
			String sql = "SELECT * FROM empinformation WHERE userid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				userBean.setEmpid(rs.getString("employeeid"));
				userBean.setEmpname(rs.getString("employeename"));
				userBean.setEmpaddress(rs.getString("employeeaddress"));
				userBean.setEmpchallenged(rs.getString("challenged"));
				userBean.setEmpdob(rs.getString("employeedob"));
				userBean.setEmpblood(rs.getString("empbloddgroup"));
				userBean.setEmpcaste(rs.getString("employeecaste"));
				userBean.setEmpwardno(rs.getString("employeewardno"));
				userBean.setEmpaccno(rs.getString("employeeaccno"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userBean;
	}
}
