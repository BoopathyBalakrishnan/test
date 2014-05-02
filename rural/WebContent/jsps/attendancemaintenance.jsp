<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance Maintenance Page</title>
<link href="../css/default.css" rel="stylesheet" type="text/css"
	media="screen" />
	<link href="../css/calendar.css" rel="stylesheet" type="text/css"media="screen" />
<link rel="stylesheet" href="../js/jquery-ui.css">
  <script src="../js/jquery-1.10.2.js"></script>
  <script src="../js/jquery-ui.js"></script>
  <link rel="stylesheet" href="../css/style.css">
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
			
			if (validate_required(empdob, "Please Select  date ") == false) {
				empdob.focus();
				return false;
			}
			if (validate_required(village, "Please Select the village") == false) {
				village.focus();
				return false;
			}
			if (validate_required(selectwardno, "Please Select WardNo") == false) {
				selectwardno.focus();
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
		<form action="attendancedao.jsp" onsubmit="validate_Loginform(this)">
<%@ include file="menu.jsp"  %>
		</div>
		<div>
			<p>&nbsp;</p>
			<table width="auto" height="255" border="0" bgcolor="#D4DADD"
				id="border">
				<tr>
					<td colspan="2">
						<h3 id="fontstyle">
							<b><u><a>Welcome to Attendance Maintenance Page</a></u></b>
						</h3>
					</td>
				</tr>
				<tr>
					<td width="255" height="100" valign="top"><img
						src="../images/34_NRG.JPG" alt="" width="175" height="150"
						class="left" /></td>

					<td width="381" valign="top"><p>&nbsp;</p>

						<fieldset id="textstyle">
							<legend>Attendance Maintenance</legend>
							<br />
							<form name="register" method="post" action="NewMemberAction.jsp">

								<input type="hidden" name="tpage"
									value="<%=request.getParameter("tpage")%>" />
								<table width="320" border="0" align="center">
									<tr>
										<td id="textstyle">Date</td>
									
										<td><input type="text" size="20" name="empdob"id="datepicker"
											readonly="readonly" /> 
												</td>
									</tr>
									<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
									
									<tr>
									<td width="15%">Village:
					<td> <select name="village"><option value="">Select One...</option>
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
							</tr><tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
									<tr>
										<td id="textstyle">Ward No</td>
										<td><select name="selectwardno">
											<option value="">Select One....</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												</tr>		
												<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>							
							<tr id="textstyle">
							<td align="left">Employee ID:</td>
							<td align="left"> <select name="empId">
							<option value="">Select One....</option>
							<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
									</select></td>
                             	

							<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
							<tr id="textstyle">
							<td align="left">Employee Name:</td>					
							
							<td align="left"> <input type=text name=employeename > </td>										</tr>
							
						
									<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
									<tr>

										<td id="textstyle"><input type="radio" name="attendance" value="Present">Present<br>
										</td>
										<td id="textstyle"><input type="radio" name="attendance" value="absent">Absent <br></td>

									</tr>
									<tr>
										<td>&nbsp</td>
										<td>&nbsp</td>
									</tr>
									<tr>

										<td id="textstyle"><input type="submit" value="Save"></td>
										<td id="textstyle"><input type="reset" value="Reset" /></td>
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
<script>
  $(function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker1" ).datepicker();
  });
  
</script>