<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance DAO</title>
</head>
<body>
<%
String pres_date=request.getParameter("empdob");
String village=request.getParameter("village");
String wardNo=request.getParameter("selectwardno");
String employeeName=request.getParameter("employeename");
String employeeId=request.getParameter("empId");
String attendance=request.getParameter("attendance");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement ps=con.prepareStatement("insert into attendance values(?,?,?,?,?,?)");
ps.setString(1,pres_date);
ps.setString(6,village);
ps.setString(2,wardNo);
ps.setString(4,employeeName);
ps.setString(3,employeeId);
ps.setString(5,attendance);
int coun=ps.executeUpdate();
if (coun>0)
{
response.sendRedirect("attendancemaintenance.jsp");
}

%>
</body>
</html>