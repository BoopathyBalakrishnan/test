<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Page</title>
<link href="../css/default.css" rel="stylesheet" type="text/css"
	media="screen" />
<script>
	function validate_required(field, alerttxt) {
		with (field) {
			if (value == null || value == "") {
				alert(alerttxt);
				return false;
			} else {
				return true;
			}
		}
	}

	function validate_Loginform(thisform) {
		with (thisform) {
			if (validate_required(username, "Please Enter the username") == false) {
				username.focus();
				return false;
			}

			if (validate_required(password, "Please Enter the password") == false) {
				password.focus();
				return false;
			}
			return true;
		}
	}
</script>
</head>
<body>
	<div id="container">
		<div id="logo"></div>

		<div>
			<p>&nbsp;</p>
			<table width="auto" height="300" border="0" bgcolor="#D4DADD"
				id="border">
				<tr id="textstyle">
					<td id="fontstyle">
						<h3 class="title" align="center">
							<b><u>Welcome to Admin Page</u></b>
						</h3>
					</td>
				</tr>
				<tr>
					<td width="255" height="208" valign="top"><img
						src="../images/img07.jpg" alt="" width="114" height="114"
						class="left" /></td>

					<td width="500" valign="top" id="tableright"><p>&nbsp;</p>

						<fieldset id="textstyle">
							<legend align="top">Admin Login</legend>
							<br />
							<form name="register" method="post"
								action="adminimage.jsp"
								onsubmit="return validate_Loginform(this)">
								<table width="450" border="0" align="center">
									<tr>
										<td id="textstyle">Username</td>
										<td><input type="text" size="20" name="username"></td>
									</tr>
									<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
									<tr>
										<td id="textstyle">Password</td>
										<td><input type="text" size="20" name="password"></td>

									</tr>
									<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
									<tr>

										<td id="textstyle"><input type="submit" value="Sign In"></td>
										<td id="textstyle"><a href="forgotpassword.jsp">Forgot
												Password </a></td>
									</tr>
									<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
								</table>
							</form>
						</fieldset></td>
				</tr>
			</table>
		</div>
		<div id="footer"></div>
	</div>
</body>
</html>