<%@ page import="java.sql.*" %>

<%
String employeeId = request.getParameter("empid");
System.out.println(employeeId);
String data ="";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/test","root","root");

PreparedStatement stmt=con.prepareStatement("select employeename from empinformation where employeeid='"+employeeId+"'");
//stmt.setString(1,"121");
ResultSet rs=stmt.executeQuery();
while(rs.next())
{
	out.println(rs.getString(1));
	//data=rs.getString(1);
} 
%>