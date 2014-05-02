<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.rural.EmployeeBean"%>
<%@ page import="com.rural.UserDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/default.css" rel="stylesheet" type="text/css"
	media="screen" />
<title>All User</title>
</head>
<body>
<form action="/UserHandler">
<div id="container">
		<div id="logo"></div>
	<%
		//UserBean user = new UserBean();
		UserDao dao = new UserDao();
		List<EmployeeBean> userList = dao.getAllUsers();
		//Iterator<UserBean> itr = userList.iterator();
	%>
	<table border="1">
		<tr>
			<th>Employee Id</th>
			<th>Employee Name</th>
			<th>Employee Address</th>
			<th>Physically Challenged</th>
			<th>DOB</th>
			<th>Blood Group</th>
			<th>Caste</th>
			<th>Ward NO</th>
			<th>Acc No</th>
			<th>Village</th>
			<th>Block</th>
		</tr>
		<tr>
			<%
				/*while(itr.hasNext())
				 {
				 System.out.println(user.getId());*/
				for (EmployeeBean user : userList) {
			%>
			<td><%=user.getEmpid()%></td>
			<td><%=user.getEmpname()%></td>
			<td><%=user.getEmpaddress()%></td>
			<td><%=user.getEmpchallenged()%></td>
			<td><%=user.getEmpdob()%></td>
			<td><%=user.getEmpblood()%></td>
			<td><%=user.getEmpcaste()%></td>
			<td><%=user.getEmpwardno()%></td>
			<td><%=user.getEmpaccno()%></td>
			<td><%=user.getEmpVilage()%></td>
			<td><%=user.getEmpBlock()%></td>
			<td><a
				href="UserHandler?action=editform&userId=<%=user.getEmpid()%>">Update</a></td>
			<td><a
				href="UserHandler?action=delete&userId=<%=user.getEmpid()%>">Delete</a></td>

		</tr>
		<%
			}
			//}
		%>
	</table>
	<p>
		<a href="employeeinformation.jsp">Add AnotherEmployee</a>
		<!-- //<a href="UserHandler?action=insert">Add AnotherEmployee</a> -->
	</p>
	</div>
	</form>
</body>
</html>