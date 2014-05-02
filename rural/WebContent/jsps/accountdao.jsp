<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account DAO</title>
</head>
<body>
<% 
String village=request.getParameter("selectvillage");
String financialyear=request.getParameter("selectfinancialyear");
String wardNo=request.getParameter("selectwardno");
String employeeId=request.getParameter("empid");
String employeeName=request.getParameter("empname");
String employeeaccno=request.getParameter("empaccno");
String workingdays=request.getParameter("workingdays");
String perdaywages=request.getParameter("perdaywages");
String totalwages=request.getParameter("totalwages");
String allotedfund=request.getParameter("allfund");
String remainingfund=request.getParameter("remfund");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement ps=con.prepareStatement("insert into accmaintenance values(?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,village);
ps.setString(2,financialyear);
ps.setString(3,wardNo);
ps.setString(4,employeeId);
ps.setString(5,employeeName);
ps.setString(6,employeeaccno);
ps.setString(7,workingdays);
ps.setString(8,perdaywages);
ps.setString(9,totalwages);
ps.setString(10,allotedfund);
ps.setString(11,remainingfund);
int count=ps.executeUpdate();
if (count>0)
{
response.sendRedirect("accountmaintenance.jsp");
}
%>
</body>
</html>