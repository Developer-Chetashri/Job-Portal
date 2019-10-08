<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Portal Jobseeker Register</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="banner_1">
		<div class="container">
			<div id="search_wrapper1">
				<div id="search_form" class="clearfix">
					<h2>Find Best Jobs here!</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="single">
			<div class="form-container">
				<h2>Jobseeker Registration</h2>

				<form name="form" action="JskRegisterServlet" method="post"
					enctype="multipart/form-data">

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="username">Username</label>
							<div class="col-md-9">
								<input type="text" name="username" id="username"
									class="form-control input-sm" />
							</div>
						</div>
						<span id="status"></span>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="password">Password</label>
							<div class="col-md-9">
								<input type="password" name="password" id="password"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="firsttName">First
								Name</label>
							<div class="col-md-9">
								<input type="text" name="firstname" id="firstname"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="lastName">Last
								Name</label>
							<div class="col-md-9">
								<input type="text" name="lastName" id="lastName"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="email">Email</label>
							<div class="col-md-9">
								<input type="text" name="email" id="email"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="contact">Contact
								Number</label>
							<div class="col-md-9">
								<input type="text" name="contactno" id="contactno"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="gender">Gender</label>
							<div class="col-md-9" class="form-control input-sm">
								<div class="radios">
									<label for="radio-01" class="label_radio"> <input
										type="radio" name="gender" value="Male" checked> Male
									</label> <label for="radio-02" class="label_radio"> <input
										type="radio" name="gender" value="Female"> Female
									</label>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="dob">Date of
								Birth</label>
							<div class="col-md-9">
								<input type="date" name="dob" id="dob"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="10-Standard">10<sup>th</sup>
								Standard
							</label>
							<div class="col-md-6">
								<input type="text" name="10thSchool" id="10thSchool"
									class="form-control input-sm" placeholder="school name" required />
							</div>
							<label class="col-md-1 control-lable" for="10-Percentage">Percentage</label>
							<div class="col-md-2">
								<input type="text" name="10Percentage" id="10Percentage"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="12-Standard">12<sup>th</sup>
								Standard
							</label>
							<div class="col-md-6">
								<input type="text" name="12thSchool" id="12thSchool"
									class="form-control input-sm" required />
							</div>
							<label class="col-md-1 control-lable" for="12-Percentage">Percentage</label>
							<div class="col-md-2">
								<input type="text" name="12ercentage" id="12Percentage"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Graduation">Graduation</label>
							<div class="col-md-9">
								<input type="text" name="education" id="education"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="College">College</label>
							<div class="col-md-9">
								<input type="text" name="college" id="college"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Address">Address</label>
							<div class="col-md-9">
								<input type="text" name="address" id="address"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="city">City</label>
							<div class="col-md-9">
								<input type="text" name="city" id="city"
									class="form-control input-sm" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="stateEmp">State</label>
							<div class="col-md-9">
								<select name="state" id="state" class="form-control input-sm"
									required>
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
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="workexp">Work
								Experience</label>
							<div class="col-md-9">
								<select name="workexp" id="workexp"
									class="form-control input-sm" required>
									<option value="">-- Select Work Experience --</option>
									<option value="fresher">Fresher</option>
									<option value="1-3 Years">1 - 3 Years</option>
									<option value="3-5 Years">3 - 5 Years</option>
									<option value="5-8 Years">5 - 8 Years</option>
								</select>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="category">Category</label>
							<div class="col-md-9">
								<select name="category" id="category"
									class="form-control input-sm" required>
									<option value="">-- Select Category --</option>
									<option value="Accounting / Auditing / Tax">Accounting
										/ Auditing / Tax</option>
									<option
										value="Customer Service / Call Centre / Operations / Data Entry">Customer
										Service / Call Centre / Operations / Data Entry</option>
									<option value="Education / Teaching / Language">Education
										/ Teaching / Language</option>
									<option value="Engineering / R&D">Engineering / R&D</option>
									<option value="Executive Management">Executive
										Management</option>
									<option value="Freshers Jobs">Freshers Jobs</option>
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
									<option value="Others">Others</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Skills">Skills</label>
							<div class="col-md-9">
								<input type="text" name="skills" id="Skills"
									class="form-control input-sm" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="resume">Upload
								Resume</label>
							<div class="col-md-9">
								<input type="file" name="resume" id="resume" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit" value="Register"
								class="btn btn-primary btn-sm">
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
