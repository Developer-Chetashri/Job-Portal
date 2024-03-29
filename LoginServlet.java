package com.niit.jobportal.repository;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.jobportal.bean.AuthDao;
import com.niit.jobportal.bean.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
		
		String username = request.getParameter("userlogin");
		String password = request.getParameter("passlogin");
		String type = request.getParameter("typelogin");
		 
		boolean result = AuthDao.checkUserPass(username,password,type); 
		if(result){
		int userid = AuthDao.getUserId(username,type);
		//System.out.println(userid + " " +username + " " + password + " " + type);
		UserBean userBean = new UserBean();
		//System.out.println();
		String auth = AuthDao.getAuthorization(userid, type);
		System.out.println(auth);
		if(type.equalsIgnoreCase("jobseeker")){
			if(auth.equalsIgnoreCase("Pending")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Pending. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else if(auth.equalsIgnoreCase("Denied")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Denied. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else{
				request.getSession().setAttribute("userid", AuthDao.getUserId(username, type));
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("type", type);
				request.getSession().setAttribute("firstname", userBean.getFirstname());
				request.getSession().setAttribute("lastname", userBean.getLastname());
				
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Login Successfull!')"); 
		        out.println("location='Jobseeker/jobseekermain.jsp';");
		        out.println("</script>");
				RequestDispatcher rd=request.getRequestDispatcher("Jobseeker/jobseekermain.jsp");  
		        rd.include(request,response);
			}
		}else if(type.equalsIgnoreCase("employer")){
			if(auth.equalsIgnoreCase("Pending")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Pending. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else if(auth.equalsIgnoreCase("Denied")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Denied. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else{
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("type", type);
			request.getSession().setAttribute("userid", AuthDao.getUserId(username, type));
			
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Login Successfull!')"); 
	        out.println("location='Employer/employermain.jsp';");
	        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("Employer/employermain.jsp");  
	        rd.include(request,response);
			}
		}
		}else{
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Invalid Username and Password!')"); 
	        out.println("location='login.jsp';");
	        out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
        rd.include(request,response);
		}
	}

}
