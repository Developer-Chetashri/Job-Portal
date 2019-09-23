<%@page import="com.niit.jobportal.utility.DbConnector"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
<title>List Jobseekers</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href="../css/font-awesome.css" rel="stylesheet"> 
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="../index.jsp"><img src="../images/4.png" width="160" height="70" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
	        	<li><a href="adminmain.jsp">View Requests</a></li>
		        <li><a href="alljobseekers.jsp">List Jobseekers</a></li>
		        <li><a href="allemployers.jsp">List Employers</a></li>
		        <li><a href="../LogoutServlet">Logout</a></li>
			</ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
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
    
    	<h2>Jobseekers:</h2>
    	
    	
    	
    	<%      
                Connection con= DbConnector.connect(); 
  
                PreparedStatement ps=con.prepareStatement(
                "select * from jobseeker order by jskid desc");        
                    
                ResultSet rs=ps.executeQuery();
                ResultSetMetaData rsmd=rs.getMetaData();
                %>
    	<% while (rs.next()){%>
    	<div class="row" style="margin:5%;width:90%;height:20%;border:solid 1px grey;padding:10px;">
					<div class="form-group col-md-12">
						<label class="col-md-3 control-lable" for="CandidateName"><h4><%= rs.getString("username") %></h4></label>
						<label class="col-md-3 control-lable" for="CandidateName"><h4><%= rs.getString("workexp") %></h4></label>
						<div class="form-actions floatRight">
							<a class="btn btn-primary btn-sm" href="updatejobseeker.jsp?userid=<%= rs.getInt(1) %>&type=Jobseeker">  Edit  </a>
							<a class="btn btn-primary btn-sm" href="../DeleteUserServlet?userid=<%= rs.getInt(1) %>&type=Jobseeker">  Delete  </a>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="Name"><h4><%= rs.getString("firstname") %> <%= rs.getString("lastname") %></h4></label>
							<label class="col-md-3 control-lable" for="Gender"><h4><%= rs.getString("gender") %></h4></label>
							<label class="col-md-3 control-lable" for="Date of Birth"><h4><%= rs.getString("dob") %></h4></label>
						</div>

						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable"
								for="Candidate-Contact-Number"><h5><%= rs.getString("contactno") %></h5></label> <label
								class="col-md-3 control-lable" for="Candidate-EmailID"><h5><%= rs.getString("email") %></h5></label> 
						</div>
						
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable"
								for="Candidate-Higher-Education"><h5><%= rs.getString("education") %></h5></label>
							<label class="col-md-3 control-lable"
								for="Candidate-Job-Category"><h5><h5><%= rs.getString("category") %></h5></h5></label>
						</div>
						
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable"
								for="Candidate-Address"><h5><%= rs.getString("address") %></h5></label> <label
								class="col-md-3 control-lable" for="Candidate-City"><h5><%= rs.getString("city") %></h5></label> 
							<label class="col-md-3 control-lable"
								for="Candidate-State"><h5><%= rs.getString("state") %></h5></label>
						</div>
					</div>
				</div>
    	<%} %>
    	
    	
    </div>
</div>
<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>	