<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
    response.setHeader("Pragma", "no-cache");
%>
<%
    try {
        if ((session.getAttribute("username")).toString() == null) {
            response.sendRedirect("adminlogin.jsp");
        }
    } catch (Exception e) {
        response.sendRedirect("adminlogin.jsp");
    }
%>
<html>
<head>
<title>Jobseeker Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="../css/bootstrap-3.1.1.min.css" rel='stylesheet'
	type='text/css' />
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link
	href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link href="../css/font-awesome.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../index.jsp"><img
				src="../images/4.png" width="160" height="70" alt="" /></a>
		</div>
		<!--/.navbar-header-->
		<div class="navbar-collapse collapse"
			id="bs-example-navbar-collapse-1" style="height: 1px;">
			<ul class="nav navbar-nav">
				<li><a href="jobseekermain.jsp">Home</a></li>
				<li><a href="" onclick="window.load()">Search Jobs</a></li>
				<li><a href="MyProfile.jsp">My Profile</a></li>
				<li><a href="updateResume.jsp">Update Resume</a></li>
				<li><a href="../LogoutServlet">Logout</a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--/.navbar-collapse--> </nav>
	<div class="banner_1">
		<div class="container">
			<div id="search_wrapper1">
				<div id="search_form" class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="single">
			<div class="form-container">
				<h2>Search job</h2>
				<form name="form" action="Joblist.jsp" method="post">
				
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Candiateprofile">Job Profile</label>
							<div class="col-md-9">
								<input type="text" name="profile" id="profile" placeholder="Profile" class="form-control input-sm">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="categoryEmp">Category</label>
							<div class="col-md-9">
								<select name="categoryEmp" id="categoryEmp"
									class="form-control input-sm">
									<option value="">-- Select Category --</option>
									<option value="Accounting / Auditing / Tax">Accounting
										/ Auditing / Tax</option>
									<option value="Engineering / R&D">Engineering / R&D</option>
									<option value="Executive Management">Executive
										Management</option>
									<option value="Freshers Jobs">Freshers Jobs</option>
									<option value="Healthcare / Medical / Pharmacy">Healthcare
										/ Medical / Pharmacy</option>
									<option value="Hotel / Restaurant / Catering">Hotel /
										Restaurant / Catering</option>
									<option value="HR / Recruitment">HR / Recruitment</option>
									<option value="Import-Export / Merchandising / Trading">Import-Export
										/ Merchandising / Trading</option>
									<option value="Insurance">Insurance</option>
									<option value="Internet Technologies / Web / E-Commerce">Internet
										Technologies / Web / E-Commerce</option>
									<option value="IT - Databases / Datawarehousing">IT -
										Databases / Datawarehousing</option>
									<option value="IT - ERP / CRM">IT - ERP / CRM</option>
									<option value="IT - Hardware / Telecom / Support">IT -
										Hardware / Telecom / Support</option>
									<option value="IT - Project Management">IT - Project
										Management</option>
									<option value="IT - Software Programming / Analysis">IT
										- Software Programming / Analysis</option>
									<option value="IT - Systems / Networking / Security">IT
										- Systems / Networking / Security</option>
									<option value="Legal / Law">Legal / Law</option>
									<option
										value="Logistics / Purchase / Supply Chain / Procurement">Logistics
										/ Purchase / Supply Chain / Procurement</option>
									<option
										value="Manufacturing / Packaging / Printing / Industrial Jobs">Manufacturing
										/ Packaging / Printing / Industrial Jobs</option>
									<option value="Marketing / Communication / Advertising / PR">Marketing
										/ Communication / Advertising / PR</option>
									<option value="Travel / Reservation / Airlines">Travel
										/ Reservation / Airlines</option>
									<option value="Others">Others</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="city">City</label>
							<div class="col-md-9">
								<input type="text" name="city" id="city"
									class="form-control input-sm" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="stateEmp">State</label>
							<div class="col-md-9">
								<select name="stateEmp" id="stateEmp"
									class="form-control input-sm">
									<option value="">-- Location --</option>
									<option value="Andhra Pradesh">Andhra Pradesh</option>
									<option value="Arunachal Pradesh">Arunachal Pradesh</option>
									<option value="Assam">Assam</option>
									<option value="Bihar">Bihar</option>
									<option value="Chandigarh">Chandigarh</option>
									<option value="Delhi">Delhi</option>
									<option value="Goa">Goa</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Haryana">Haryana</option>
									<option value="Himachal Pardesh">Himachal Pardesh</option>
									<option value="Jammu & Kashmir">Jammu & Kashmir</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Karnatka">Karnatka</option>
									<option value="Kerla">Kerla</option>
									<option value="MadhyaPardesh">MadhyaPardesh</option>
									<option value="Maharasthra">Maharasthra</option>
									<option value="Mainpur">Mainpur</option>
									<option value="Meghalaya">Meghalaya</option>
									<option value="Mizoram">Mizoram</option>
									<option value="Nagaland">Nagaland</option>
									<option value="Odisha">Odisha</option>
									<option value="Punjab">Punjab</option>
									<option value="Rajasthan">Rajasthan</option>
									<option value="Sikkim">Sikkim</option>
									<option value="Tamil Nadu">Tamil Nadu</option>
									<option value="Telangana">Telangana</option>
									<option value="Tripura">Tripura</option>
									<option value="Uttarakhand">Uttarakhand</option>
									<option value="Uttar Pardesh">Uttar Pardesh</option>
									<option value="West Bengal">West Bengal</option>
									<option value="Hyderbad">Hyderbad</option>
									<option value="Damn and Diu">Damn and Diu</option>
									<option value="Lakhdeep & Islands">Lakhdeep & Islands</option>
									<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
									<option value="Pondicherry">Pondicherry</option>

								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Candiateprofile">Word Experience</label>
							<div class="col-md-9">
								<select name="ExperienceReq" id="ExperienceReq"
									class="form-control input-sm">
									<option value="">-- Select Experience --</option>
									<option value="Fresher">Fresher</option>
									<option value="1To2Years">1-2 Years</option>
									<option value="2To3Years">2-3 Years</option>
									<option value="3To5Years">3-5 Years</option>
									<option value="5To10Years">5-10 Years</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Candiateprofile">Salary</label>
							<div class="col-md-9">
								<select name="SalaryExpected" id="SalaryExpected"
									class="form-control input-sm">
									<option value="">-- Select Salary --</option>
									<option value="LessThan1Lakhs">less than 1 lakhs</option>
									<option value="1To2Lakhs">1-3 Lakhs</option>
									<option value="3To5Lakhs">3-5 Lakhs</option>
									<option value="5To8Lakhs">5-8 Lakhs</option>
									<option value="8ToLakhs">8-10 Lakhs</option>
									<option value="10To15Lakhs">10-15 Lakhs</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit" value="Search"
								class="btn btn-primary btn-sm">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>
