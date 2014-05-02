<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login Page</title>
<link href="css/default.css" rel="stylesheet" type="text/css"
	media="screen" />
</head>
<body>
	<div id="logo"></div>

	<div id="header">
		<table width="100%">

			<tr>
				<td id="list">
					<ul>
						<li><a href="jsps/homepage"> Home </a></li>
						<li><a href="jsps/aboutus.jsp"> About US </a></li>
						<li><a href="jsps/employeelogin.jsp"> Employee Login</a></li>
						<li><a href="jsps/adminlogin.jsp"> Admin Login </a></li>
					</ul>
				</td>

			</tr>
			<tr>
				<td align="left"><h1>
						<b> Admin Login</b>
					</h1></td>
			</tr>

		</table>
	</div>
	<div>
		<p>&nbsp;</p>
		<table width="646" height="200" border="0">
			<tr>
				<td width="255" height="208" valign="top"><img
					src="images/img07.jpg" alt="" width="114" height="114" class="left" /></td>

				<td width="381" valign="top"><p>&nbsp;</p>

					<fieldset id="fieldset">
						<legend>Login</legend>
						<br />
						<form name="register" method="post" action="NewMemberAction.jsp">

							<input type="hidden" name="tpage"
								value="<%=request.getParameter("tpage")%>" />
							<table width="320" border="0" align="center">
								<tr>
									<td>Username</td>
									<td><input type="text" size="20"></td>
								</tr>
								<tr>
									<td>Password</td>
									<td><input type="text" size="20"></td>

								</tr>
								<tr>

									<td><input type="submit" value="Sign In"></td>
									<td><a href="jsps/forgotpassword">Forgot Password </a></td>
								</tr>
							</table>
						</form>
					</fieldset></td>
			</tr>	
		</table>
	</div>
<div id="myfooter"></div>
</body>
</html>