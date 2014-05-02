<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Maintenance</title>
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
			
			if (validate_required(selectvillage, "Please Select the Village") == false) {
				selectvillage.focus();
				return false;
			}
			if (validate_required(selectwardno, "Please Select WardNo") == false) {
				selectwardno.focus();
				return false;
			}
			if (validate_required(selectyear, "Please Select Financial Year") == false) {
				selectyear.focus();
				return false;
			}
			
					return true;
		}
	}
</script>

</head>
<body>
	<div id="logo"></div>
	<div>
	
	    
    <%@ include file="menu.jsp"  %>

	</div>
	<div bgcolor="#D4DADD" id="border" width="auto" height="255">
	
	
		<h1 >
			<a>Account Maintenance!</a>
		</h1>
		<table width="646" height="255" border="0">
			<tr>
				<td width="255" height="208" valign="top">
				<img src="../images/image_mini.jpg" alt="" width="114" height="114"class="left" /></td>
				<td width="900" valign="top"><p>&nbsp;</p>

					<fieldset>
						<legend class="style1" id="textstyle">Account Maintenance</legend>
						<br />
						<div>
						<form action="accountdao.jsp" onsubmit="validate_Loginform(this)">
							<table width="100%">
								<tr width="100px" id="textstyle">
									<td width="50">Village	</td>
									<td><select name="selectvillage">
									<option value="">Select One....</option>
												<option value="ALLANGUDI">ALLANGUDI</option>
									<option value="ANIYAMANGALAM">ANIYAMANGALAM</option>
									<option value="RAJAKARUPPUR">RAJAKARUPPUR</option>
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
	                    					<td width="20%" id="textstyle">Ward No</td>
										<td><select name="selectwardno">
										<option value="">Select One....</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option></select>
												</td>			                                                    									
                                    <td width=20%" id="textstyle"> Financial Year:</td>
                                    <td><select name="selectfinancialyear">
                                    <option value="">Select One....</option>
									<option value="2009">2013-2014</option>
									<option value="2010">2014-2015</option>
									<option value="2011">2015-2016</option>
				</select></td>	</tr>
				
								<tr>	<td>&nbsp;</td></tr>
								<tr id="textstyle">
							<td align="left">Employee ID:</td>
							<td align="left"> <select name="empid">
							<option value="">Select One....</option>
									</select></td>
							
							<td align="left">EmployeeName:</td>
							<td align="center"> <select name="empname">
							<option value="">Select One....</option>
								</select></td></tr>
							<tr>
							<td>&nbsp;</td></tr>
							<tr>&nbsp;</tr>
	    					<tr>
	    					<td id="textstyle">Account No:</td>
	    							
	    					<td><input type="text" size="15"></td>
						
									<td id="textstyle">Working Days:</td>
									<td><input type="text" size="20"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr id="textstyle">
									<td>Per Day Wages:</td>
									<td><input type="text" size="20" value=150></td>
							
									<td>Total Wages:</td>
									<td><input type="text" size="20"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr id="textstyle">
									<td>Allotted Fund:</td>
									<td><input type="text" size="20" value=500000></td>
									
				         		
								
									<td id="textstyle">Remaining Fund:</td>
									<td><input type="text" size="20"></td>
									<td><input type="submit" name="SAVE" value="save"></td>
								</tr>

							</table>
						</div>
					</fieldset></td>
			</tr>
		</table>


	</div>
</body>
</html>