<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee DAO</title>
</head>
<body>
	<%
		String employeeName = request.getParameter("empname");
	
		String employeeId = request.getParameter("empid");
		String employeeAddress = request.getParameter("empaddress");
		String selectPhysically = request.getParameter("select");
		String dob=request.getParameter("empdob");
		String bloodGroup = request.getParameter("selectbloodgroup");
		String caste = request.getParameter("selectcaste");
		String wardNo = request.getParameter("selectwardno");
		String accountNo = request.getParameter("empaccno");
		String village = request.getParameter("village");
		String block = request.getParameter("block");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/test","root","root");
		//If YOU USE ORACLE DB
		/* Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "system", "anbu"); */
		PreparedStatement ps = con
				.prepareStatement("insert into empinformation values(?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, employeeName);
				ps.setString(2, employeeId);
				ps.setString(3, employeeAddress);
				ps.setString(4, selectPhysically);
				ps.setString(5, dob);
				ps.setString(6, bloodGroup);
				ps.setString(7, caste);
				ps.setString(8, wardNo);
				ps.setString(9, accountNo);
				ps.setString(10, village);
				ps.setString(11, block);
				int count = ps.executeUpdate();
				 if (count > 0) {
					JOptionPane.showMessageDialog(null, "Employee Created");
					
					response.sendRedirect("employeeinformation.jsp");
				} 
	%>
</body>
</html>