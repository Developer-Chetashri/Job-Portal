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

/**
 * Servlet implementation class EmpRegisterServlet
 */
@WebServlet("/EmpRegisterServlet")
public class EmpRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpRegisterServlet() {
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
          
        String cmpname=request.getParameter("cmpName");
        String pass=request.getParameter("passwordEmp");        
        String contactno=request.getParameter("contactEmp");
        String email=request.getParameter("emailEmp");
        String city=request.getParameter("cityEmp");
        String state=request.getParameter("stateEmp");
        String category=request.getParameter("categoryEmp");
        String aboutcompany = request.getParameter("AboutCompany");
        String website = request.getParameter("OrganizationLink");
        String address = request.getParameter("OrganizationAddress");
        boolean checkusername = AuthDao.checkEmpUserName(cmpname);
        
        if(checkusername){ 
        	boolean status = AuthDao.addNewEmployer(cmpname,pass,email, contactno,website, address,city,state,category,aboutcompany);
            
            if(status){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registered Successfully!')"); 
                out.println("location='login.jsp';");
                out.println("</script>");
                RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
                rd.include(request,response); 
            }else{ 
            	out.println("<script type=\"text/javascript\">");
                out.println("alert('Register Error!')"); 
                out.println("location='register.jsp';");
                out.println("</script>");
                RequestDispatcher rd=request.getRequestDispatcher("empregister.jsp");  
                rd.include(request,response); 
            }
        }else{
        	out.println("<script type=\"text/javascript\">");
            out.println("alert('Username already exists!')"); 
            out.println("location='register.jsp';");
            out.println("</script>");
        	RequestDispatcher rd=request.getRequestDispatcher("empregister.jsp");  
            rd.include(request,response); 
        }
	}

}
