<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Workers DAO</title>
</head>
<body>
	<%
		String village = request.getParameter("village");
		String financialyear = request.getParameter("year");
		String employeeName = request.getParameter("empname");
		String employeeId = request.getParameter("empid");
		String wardNo = request.getParameter("selectwardno");
		String firstdate = request.getParameter("firstdate");
		String lastdate = request.getParameter("lastdate");
		String noofdays = request.getParameter("noofdays");
		String work = request.getParameter("work");
		String since = request.getParameter("since");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/test", "root", "root");
		//If YOU USE ORACLE DB
		/* Connection con = DriverManager.getConnection(
		 "jdbc:oracle:thin:@localhost:1521:XE", "system", "anbu"); */
		PreparedStatement ps = con
				.prepareStatement("insert into workallocation values(?,?,?,?,?,?,?,?,?,?)");

		ps.setString(1, village);
		ps.setString(2, financialyear);
		ps.setString(3, employeeName);
		ps.setString(4, employeeId);
		ps.setString(5, wardNo);
		ps.setString(6, firstdate);
		ps.setString(7, lastdate);
		ps.setString(8, noofdays);
		ps.setString(9, work);
		ps.setString(10, since);
		int count = ps.executeUpdate();
		if (count > 0) {

			response.sendRedirect("work.jsp");
		}
	%>
</body>
</html>