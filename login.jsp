<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Portal Login</title> 
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
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
	   <div class="col-md-4">
	   	  <img src="images/login.jpg" width="100%" height="350px" alt=""/>
	 </div>
	 <div class="col-md-8 single_right">
	 	   <div class="login-form-section">
                <div class="login-content">
                <h2>Login</h2>
                    <form name="form" action="LoginServlet" method="post">
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-user"></i></span>
                                <input type="text" name="userlogin" id="userlogin" class="form-control" placeholder="Username" required>
                            </div>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-key"></i></span>
                                <input type="password" name="passlogin" id="passlogin" class="form-control" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-users"></i></span>
                                <select name="typelogin" class="form-control" required>
                                <option value="">--- Select Type ---</option>
 								<option value="jobseeker">Jobseeker</option>
  								<option value="employer">Employer</option>
                                </select>
                            </div>
                        </div>
                     <!-- <div class="forgot">
						 <div class="login-check">
				 			<label class="checkbox1"><input type="checkbox" name="checkbox"><i> </i>Remember Me</label>
				         </div>
				 		  <div class="login-para">
				 			<p><a href="#"> Forgot Password? </a></p>
				 		 </div>
					     <div class="clearfix"> </div>
			        </div> -->
					<div class="login-btn">
					   <input type="submit" value="Login">
					</div>
					</form>
					<div class="login-bottom">
					<h4>Not Registered? <a href="register.jsp"> Register Now!</a></h4>
					</div>
                </div>
         </div>
   </div>
  <div class="clearfix"> </div>
 </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>	