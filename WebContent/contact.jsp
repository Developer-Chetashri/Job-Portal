<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Portal Contact</title>
</head>
<body>
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>
		<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		   
           </div>
		</div>
		</div>
		</div>
		<div class="container">
			<div class="single">
				<div class="content_bottom">
					<h3>Contact Us</h3>
					<form>
						<div class="contact_box1">
							<input type="text" class="text" value="Name"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Name';}"> <input
								type="text" class="text" value="Email"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Email';}"
								style="margin-left: 3%"> <input type="text" class="text"
								value="Phone" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Phone';}"
								style="margin-left: 3%">
						</div>
						<div class="text_1">
							<textarea value="Message" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						</div>
						<div class="form-submit1 form_but1">
							<input name="submit" type="submit" id="submit" value="Submit"><br>
						</div>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
		</div>
		<div class="map">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15132.960872486306!2d73.8419293!3d18.5180437!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4d166a8b9b45c40c!2sNIIT%20Pune%20Deccan%20Centre!5e0!3m2!1sen!2sin!4v1568361693640!5m2!1sen!2sin"
				width="600" height="450" frameborder="0" style="border: 0;"
				allowfullscreen=""></iframe>
		</div>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>			