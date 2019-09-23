package com.niit.jobportal.repository;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.jobportal.bean.JobResult;

/**
 * Servlet implementation class ApplyforJob
 */
@WebServlet("/ApplyforJob")
public class ApplyforJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ApplyforJob() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int jskid = Integer.parseInt(request.getParameter("userid"));
		int jobid = Integer.parseInt(request.getParameter("jobid"));
		int empid = Integer.parseInt(request.getParameter("empid"));
		JobResult rs = new JobResult();
		String url = "";
		boolean result = rs.applyForJob(jobid, jskid, empid);
		System.out.println(result);
		if (result) {
			url = "Jobseeker/Joblist.jsp";
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Updated Successfully!')");
			out.println("location='" + url + "';");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.include(request, response);
		} else {
			url = "Jobseeker/Joblist.jsp";
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Error while Applying!')");
			out.println("location='" + url + "';");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.include(request, response);
		}
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
