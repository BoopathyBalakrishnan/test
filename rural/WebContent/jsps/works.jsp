<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<table width="100%">

				<tr>
					<td id="list">
						<ul>
							<li><a href="jsps/Home"> Home </a></li>
							<li><a href="jsps/ticket"> Ticket </a></li>
							<li><a href="jsps/aboutus"> About US </a></li>
							<li><a href="jsps/gallery"> Gallery </a></li>
							<li><a href="jsps/myaccount"> My Account </a></li>
							<li><a href="jsps/contactus"> Contact Us </a></li>
						</ul>
					</td>
				</tr>


				<!-- <tr>
					<td><b>HEADER COMES HERE</b></td>
				</tr> -->
			</table>

			<!-- Header ends -->
		</div>
		<div id="content">
			<div id="right">
				
				
				<ul>
							<li><a href="jsps/Home"> Home </a></li>
							<li><a href="jsps/ticket"> Ticket </a></li>
							<li><a href="jsps/aboutus"> About US </a></li>
							<li><a href="jsps/gallery"> Gallery </a></li>
							<li><a href="jsps/myaccount"> My Account </a></li>
							<li><a href="jsps/contactus"> Contact Us </a></li>
						</ul>
				
			</div>

			<div id="left">
				<table width="100%">
			<tr id="textstyle">
				<td>state:Tamilnadu</td>
				<td>District:Chennai</td>
				<td>Block: Tambaram</td>
				<td>panchay:xxxxx</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr align="center" id="textstyle">
				<td colspan="3">Work Allocation</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr id="textstyle">
				<td align="center">Financial Year <select>
						<option value="2009">2009-2010</option>
						<option value="2010" selected>2010-2011</option>
						<option value="2011">2011-2012</option>
						<option value="2012">2012-2013</option>
				</select></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr id="textstyle">

				<td>panchayat:xxxxx</td>
				<td>Registration ID: <input type="text" name="registration id"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>


			<tr>
				<td>
					<table width="100%">

						<tr id="textstyle">

							<td><b>Emp Name</b></td>
							<td colspan="2" align="center">Work Allocation Date</td>
							<td>No of Days</td>
						</tr>
						<tr>
							<td><input type="text" /></td>

							<td>
								<table width="100%">
									<thead>
										<tr align="center">
											<th>From</th>
											<th>To</th>
										</tr>
										<tr>
											<td><input type="text" /></td>
											<td><input type="text" /></td>

										</tr>
										<tr>
											<td><input type="text" /></td>
											<td><input type="text" /></td>
										</tr>

									</thead>


								</table>
						</tr>

					</table>
				</td>
			</tr>

		</table>
			</div>
		</div>
		<div id="footer">
			<h1>FOOTER side content</h1>
		</div>
		<!-- container ends -->
	</div>

</body>
</html>