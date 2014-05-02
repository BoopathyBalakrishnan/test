<%@page import="com.rural.EmployeeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.rural.EmployeeBean"%>
<%@ page import="com.rural.UserDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script language="javaScript" type="text/javascript" src="calendar.js"></script>
<link href="../css/calendar.css" rel="stylesheet" type="text/css">
<link href="../css/default.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="../css/calendar.css" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../js/jquery-ui.css">
<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/jquery-ui.js"></script>
<link rel="stylesheet" href="../css/style.css">

<title>Employee Information</title>
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
			if (validate_required(block, "Please Select the Block") == false) {
				block.focus();
				return false;
			}
			if (validate_required(village, "Please Select the Village") == false) {
				village.focus();
				return false;
			}
			if (validate_required(selectwardno, "Please Select WardNo") == false) {
				selectwardno.focus();
				return false;
			}
			if (validate_required(empid, "Please Enter the EmployeeID") == false) {
				empid.focus();
				return false;
			}
			if (document.getElementById('empId').value.length <= 6) {
				//empid.focus();
				alert("Enter the Correct Employee Id");
				return false;
			}
			if (validate_required(empname, "Please Enter the EmployeeName") == false) {
				empname.focus();
				return false;
			}

			if (validate_required(empaddress,
					"Please Enter the EmployeeAddress") == false) {
				empaddress.focus();
				return false;
			}

			if (validate_required(empdob, "Please Select dob ") == false) {
				empdob.focus();
				return false;
			}
			if (validate_required(empaccno,
					"Please Enter the EmployeeAccountNo") == false) {
				empaccno.focus();
				return false;
			}

			if (validate_required(selectbloodgroup, "Please Select BloodGroup") == false) {
				selectbloodgroup.focus();
				return false;
			}

			if (validate_required(selectcaste, "Please Select category") == false) {
				selectcaste.focus();
				return false;
			}

			if (validate_required(select,
					"Please Select Physically Challenged ") == false) {
				select.focus();
				return false;
			}

			return true;
		}
	}
</script>
</head>
<body>
<%
	EmployeeBean user = new EmployeeBean();
%>
<%
	UserDao dao = new UserDao();
%>
<%-- <form method="POST" action='UserHandler' name="frmEditUser"><input
	type="hidden" name="action" value="edit" /> <%
 	String uid = request.getParameter("userId");
 	if (!((uid) == null)) {
 		int id = Integer.parseInt(uid);
 		user = dao.getUserById(id);
 %> --%>
	<div id="container">
		<div id="logo"></div>
		<div>

			<%@ include file="menu.jsp"%>
		</div>

		<div>
			<p> </p>
			<table width="auto" height="100" border="0" bgcolor="#D4DADD"
				id="border">
				<tr id="fontstyle">
					<td colspan="2">
						<h3 class="title" align="center">
							<b><u>Welcome to Employee Information Page</u></b>
						</h3>
					</td>
				</tr>
				<tr>
					<td width="255" height="208" valign="top"><img
						src="../images/wa.jpg" alt="" width="250" height="350"
						class="left" /></td>

					<td width="auto" valign="top"><p> </p>

						<fieldset id="textstyle">
							<legend align="top">Employee Information</legend>
							<br />
							<form name="empinformation"
								onsubmit="return validate_Loginform(this)" method="post"
								action="employeedao.jsp">
								<table width="auto" border="0" align="center">
									<tr>

										<td width="15%">Block:</td>
										<td><select name="block">
												<option value="">Select One...</option>
												<option value="Valangaiman">Valangaiman</option>
												<option value="Kodavasal">Kodavasal</option>
												<option value="Koradacherry">Koradacherry</option>
												<option value="Nannilam">Nannilam</option>
												<option value="Thiruvarur">Thiruvarur</option>
										</select></td>

										<td width="15%">Village:</td>
										<td><select name="village">
												<option value="">Select One...</option>
												<option value="ALLANGUDI">ALLANGUDI</option>
												<option value="ANIYAMANGALAM">ANIYAMANGALAM</option>
												<option value="RAJAKARUPPU">RAJAKARUPPU</option>
												<option value="44.REGUNATHAPURAM">44.REGUNATHAPURAM</option>
												<option value="85 KILIYUR">85 KILIYUR</option>
												<option value="ANNUKKUDI">ANNUKKUDI</option>
												<option value="ARAVOOR">ARAVOOR</option>
												<option value="ATHICHAMANGALAM">ATHICHAMANGALAM</option>
												<option value="AVALIVANALLUR">AVALIVANALLUR</option>
												<option value="AVOOR">AVOOR</option>
												<option value="ENAMKILIYUR">ENAMKILIYUR</option>
												<option value="ERIVELUR">ERIVELUR</option>
												<option value="GOVINDAKUDI">GOVINDAKUDI</option>
												<option value="KALATHUR">KALATHUR</option>
												<option value="KANDIYUR">KANDIYUR</option>
										</select></td>


									</tr>

									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td id="textstyle">Ward No</td>
										<td><select name="selectwardno" id="selectwardno"
											onchange="change()">
												<option value="">Select One...</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
										</select></td>

										<td id="textstyle">Employee ID</td>
										<td><input type="text" size="20" id="empId" name="empid" readonly="readonly" value="<%=user.getEmpid() %>" /></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>

									<tr>
										<td id="textstyle">Employee Name</td>
										<td><input type="text" size="20" name="empname" /></td>
										<td id="textstyle">Blood Group</td>
										<td><select name="selectbloodgroup">
												<option value="">Select One...</option>
												<option value="o+">o+</option>
												<option value="ab+">AB+</option>
												<option value="a">A</option>
												<option value="b">B+</option>
										</select></td>



									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td id="textstyle">Employee Address</td>
										<td><textarea rows="4" cols="15" name="empaddress"></textarea></td>
										<td id="textstyle">Category</td>
										<td><select name="selectcaste">
												<option value="">Select One...</option>
												<option value="mbc">MBC</option>
												<option value="bc">BC</option>
												<option value="oc">OC</option>
												<option value="sc">SC</option>
										</select></td>

									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td id="textstyle">Date of Birth</td>
										<td><input type="text" name="empdob" id="datepicker"
											readonly="readonly" /></td>
										<td id="textstyle">Physically Challenged</td>
										<td><select name="select">
												<option value="">Select One...</option>
												<option value="yes">Yes</option>
												<option value="no">No</option>
										</select></td>

									</tr>
									<tr>
										<td>&nbsp;</td>

									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>

									<tr>



									</tr>
									<tr></tr>
									<tr></tr>

									<tr>


									</tr>
									<tr>
										<td id="textstyle">Bank account no</td>
										<td><input type="text" size="20" maxlength="10"
											name="empaccno" /></td>
									</tr>
									<tr>
										<td colspan="4" id="textstyle" align="center"><input
											type="submit" value="Register" /></td>
									</tr>
								</table>
			</table>

			</form>
			</fieldset>
			</td>
			</tr>


			</table>
		</div>
		<
		<div id="footer" />
	</div>
</body>
</html>
<script>
	$(function() {
		$("#datepicker").datepicker();

	});

	function change() {
		var v = document.getElementById('selectwardno').value;
		if (v == 1)
			document.getElementById('empId').value = "TN-01-";
		else if (v == 2)
			document.getElementById('empId').value = "TN-02-";
		else if (v == 3)
			document.getElementById('empId').value = "TN-03-";
		else if (v == 4)
			document.getElementById('empId').value = "TN-04-";
	}
</script>