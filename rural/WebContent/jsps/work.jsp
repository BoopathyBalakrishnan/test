<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script language="javaScript" type="text/javascript" src="calendar.js"></script>
<title>Work Allocation Page</title>
<link href="../css/default.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="../css/calendar.css" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../js/jquery-ui.css">
<script src="../js/jquery-1.10.2.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
	
</script>
<script src="../js/jquery-ui.js"></script>
<link rel="stylesheet" href="../css/style.css">
<script>
	function validate_required(field, alerttxt) {
		with (field) {
			if (value == null || value == "") {
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
			if (validate_required(year, "Please Select Financial Year") == false) {
				year.focus();
				return false;
			}
			if (validate_required(empId, "Please Enter the EmployeeID") == false) {
				empId.focus();
				return false;
			}

			if (validate_required(empname, "Please Select employeename") == false) {
				empname.focus();
				return false;
			}

			if (validate_required(selectwardno, "Please Select WardNo") == false) {
				selectwardno.focus();
				return false;
			}

			if (validate_required(fromdate, "Please Select from date ") == false) {
				fromdate.focus();
				return false;
			}
			if (validate_required(todate, "Please Select to date ") == false) {
				todate.focus();
				return false;
			}
			if (validate_required(select, "Please Select work ") == false) {
				select.focus();
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
			<%@ include file="menu.jsp"%>
			</td>
		</div>

		<%-- <table id="includecrud" >
			<tr>
				<td width="100%" bgcolor="#ffffffff">
					 <%@ include
					file="workscrud.jsp"%>
				</td>
		</table> --%>

		<div>
			<form action="workdao.jsp" onsubmit="validate_Loginform(this)">
				<table width="98%" id="workstablecss">
					<tr id="textstyle">
						<td width="10%">State:TamilNadu</td>
						<td width="10%">District:Thiruvarur</td>
						<td width="15%">Block:<select name="block">

								<option value="">Select One....</option>
								<option value="Valangaiman">Valangaiman</option>
								<option value="Kodavasal">Kodavasal</option>
								<option value="Koradacherry">Koradacherry</option>
								<option value="Nannilam">Nannilam</option>
								<option value="Thiruvarur">Thiruvarur</option>
						</select>
						</td>

						<td width="15%">Village:<select name="village">
								<option value="">Select One....</option>
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
						</select>
						</td>

						<td width="15%">Financial Year:<select name="year">
								<option value="">Select One....</option>
								<option value="2009">2013-2014</option>
								<option value="2010">2014-2015</option>
								<option value="2011">2015-2016</option>
						</select></td>
					</tr>


				</table>
				<table width="100%">
					<br>
					<tr>
						<td id="textstyle" colspan="5" align="center">
							<h3>Workers Details</h3>
						</td>
					</tr>
					<br>
					<tr>
					<tr id="textstyle">
						<td></td>
						<td align="right">Employee ID:</td>
						<td align="left"><select id="empId" name="empId"
							onchange="selectName()">
								<option value="">Select one...</option>
								<%
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(
											"jdbc:mysql://localhost:3306/test", "root", "root");
									//If YOU USE ORACLE DB
									/* Connection con = DriverManager.getConnection(
											"jdbc:oracle:thin:@localhost:1521:XE", "system", "anbu"); */
									Statement ps = con.createStatement();
									ResultSet rs = ps
											.executeQuery("select employeeid from empinformation");
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
								<%
									}
								%>
						</select></td>
						<td align="right">Employee Name:</td>
						<td align="left"><input type="text" id="empname"
							name="empname"></td>
						<td id="textstyle" align="right">Ward No:</td>
						<td align="left"><select name="selectwardno">
								<option value="">Select One....</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select></td>
					</tr>
				</table>
				<table width="100%">
					<tr id="textstyle" align="center">
						<td colspan="5">
							<table bgcolor="#327FBD" width="80%">
								<thead>
									<th colspan="2">Work Allocation Date</th>
									<th>No of Days</th>
								</thead>
								<tr>

									<td align="right">From</td>

									<td align="left"><input type="text" name="fromdate"
										class="fromdate" id="datepicker"></td>
									<td rowspan="2" align="center"><input type="text"
										id="hours" name="hours"></td>
								</tr>
								<tr>
									<td align="right">To</td>
									<td align="left"><input type="text" name="todate"
										class="todate" id="datepicker1"></td>

								</tr>


								<tr>
									<td align="right">Work</td>
									<td align="left"><select name="select">
											<option value="selec" selected="selected">Select
												Work</option>
											<option value="rc01">RC01</option>
											<option value="rc02">RC02</option>
											<option value="rc02">RC03</option>
											<option value="rc02">RC04</option>
									</select></td>

								</tr>

								<tr>
									<td colspan="4" align="center">Since distance from 5km to
										10km<input type="radio" name="since" value="yes"
										checked="checked">Yes<input type="radio" name="since"
										value="yes">No
									</td>

								</tr>

								<table id="calenderTable">
									<tbody id="calenderTableHead">
										<tr>
											<td colspan="4" align="center"><select
												onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));"
												id="selectMonth">
													<option value="0">Jan</option>
													<option value="1">Feb</option>
													<option value="2">Mar</option>
													<option value="3">Apr</option>
													<option value="4">May</option>
													<option value="5">Jun</option>
													<option value="6">Jul</option>
													<option value="7">Aug</option>
													<option value="8">Sep</option>
													<option value="9">Oct</option>
													<option value="10">Nov</option>
													<option value="11">Dec</option>
											</select></td>
											<td colspan="2" align="center"><select
												onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));"
												id="selectYear">
											</select></td>
											<td align="center"><a href="#"
												onClick="closeCalender();"><font color="#003333"
													size="+1">X</font></a></td>
										</tr>
									</tbody>
									<tbody id="calenderTableDays">
										<tr style="">
											<td>Sun</td>
											<td>Mon</td>
											<td>Tue</td>
											<td>Wed</td>
											<td>Thu</td>
											<td>Fri</td>
											<td>Sat</td>
										</tr>
									</tbody>
									<tbody id="calender"></tbody>
								</table>

								</div>


								<tr>

									<td colspan="5" align="center"><input type="submit"
										name="save" value="Save"></td>
								</tr>



								<table width="100%" height="" border="0">
									<tr>
										<td align="left" width="50%" height="" valign="top"><marquee
												direction="left">
												<img src="../images/images (6.jpg" alt="" width="400"
													height="160" class="left" /></td>
										<td><img src="../images/mnerga-100-days.jpg" alt=""
											width="225" height="160" class="center" /></td>
										</marquee>

										<td align="right" width="50%" height="" valign="top"><marquee
												direction="right">
												<img src="../images/images (8.jpg" alt="" width="400"
													height="160" class="left" /></td>
										</marquee>
									</tr>
								</table>
								</form>
								</div>
</body>
</html>
<script>
	$(function() {
		$("#datepicker").datepicker();
		$("#datepicker1").datepicker();
	});

	$(document)
			.ready(
					function() {
						$("#hours")
								.click(
										function() {
											var td = $(".fromdate").val();
											var fd = $(".todate").val();
											var v = td.split("/")[1];
											var v1 = fd.split("/")[1];
											document.getElementById("hours").value = parseInt(v1)
													- parseInt(v);
										});
					});

	$(document).ready(function() {
		$("#empId").change(function() {
			var v = document.getElementById('empId').value;
			$.get("employeeName.jsp?empid=" + v, function(data, status) {
				//alert("Data: " + data + "\nStatus: " + status);
				document.getElementById('empname').value = data;
			});
		});
	});
</script>