package com.niit.jobportal.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.niit.jobportal.utility.DbConnector;

public class JobDetails {
	int JobID;
	String JobProfile;
	String JobCategory;
	String JobType;
	String JobLocation;
	String JobState;
	String JobOpening;
	String JobSalary;
	String JobExperience;
	String JobNoticePeriod;
	String JobCompany;
	String JobStatus;
	String JobCompanyLink;
	String JobCreatedBy;

	public String getJobCreatedBy() {
		return JobCreatedBy;
	}

	public void setJobCreatedBy(String jobCreatedBy) {
		JobCreatedBy = jobCreatedBy;
	}

	public int getJobID() {
		return JobID;
	}

	public void setJobID(int jobID) {
		JobID = jobID;
	}

	public String getJobProfile() {
		return JobProfile;
	}

	public void setJobProfile(String jobProfile) {
		JobProfile = jobProfile;
	}

	public String getJobCategory() {
		return JobCategory;
	}

	public void setJobCategory(String jobCategory) {
		JobCategory = jobCategory;
	}

	public String getJobType() {
		return JobType;
	}

	public void setJobType(String jobType) {
		JobType = jobType;
	}

	public String getJobLocation() {
		return JobLocation;
	}

	public void setJobLocation(String jobLocation) {
		JobLocation = jobLocation;
	}

	public String getJobState() {
		return JobState;
	}

	public void setJobState(String jobState) {
		JobState = jobState;
	}

	public String getJobOpening() {
		return JobOpening;
	}

	public void setJobOpening(String jobOpening) {
		JobOpening = jobOpening;
	}

	public String getJobSalary() {
		return JobSalary;
	}

	public void setJobSalary(String jobSalary) {
		JobSalary = jobSalary;
	}

	public String getJobExperience() {
		return JobExperience;
	}

	public void setJobExperience(String jobExperience) {
		JobExperience = jobExperience;
	}

	public String getJobNoticePeriod() {
		return JobNoticePeriod;
	}

	public void setJobNoticePeriod(String jobNoticePeriod) {
		JobNoticePeriod = jobNoticePeriod;
	}

	public String getJobCompany() {
		return JobCompany;
	}

	public void setJobCompany(String jobCompany) {
		JobCompany = jobCompany;
	}

	public String getJobStatus() {
		return JobStatus;
	}

	public void setJobStatus(String jobStatus) {
		JobStatus = jobStatus;
	}

	public String getJobCompanyLink() {
		return JobCompanyLink;
	}

	public void setJobCompanyLink(String jobCompanyLink) {
		JobCompanyLink = jobCompanyLink;
	}

	public void fetchValuesfromDB() throws IOException, ClassNotFoundException {
		try {
			CompanyDetails companydetails = new CompanyDetails();
			Connection con=DbConnector.connect();
			PreparedStatement ps = con.prepareStatement("select * from jobdetails");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				setJobID(rs.getInt("jobid"));
				setJobProfile(rs.getString("jobprofile"));
				setJobCategory(rs.getString("jobcategory"));
				setJobType(rs.getString("jobtype"));
				setJobLocation(rs.getString("location"));
				setJobState(rs.getString("state"));
				setJobOpening(rs.getString("jobopening"));
				setJobSalary(rs.getString("salaryexpected"));
				setJobExperience(rs.getString("workexperience"));
				setJobNoticePeriod(rs.getString("noticeperiod"));
				setJobCreatedBy(rs.getString("createdby"));
				companydetails.fetchingCompanyDetails(getJobCreatedBy());
				setJobCompany(companydetails.getCompanyName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void fetchValuesfromDB(int jobID) throws IOException, ClassNotFoundException {
		try {
			System.out.println(jobID);
			CompanyDetails companydetails = new CompanyDetails();
			Connection con=DbConnector.connect();
			PreparedStatement ps = con.prepareStatement("select * from jobdetails where jobid=?");
			ps.setInt(1, jobID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				setJobID(rs.getInt("jobid"));
				setJobProfile(rs.getString("jobprofile"));
				setJobCategory(rs.getString("jobcategory"));
				setJobType(rs.getString("jobtype"));
				setJobLocation(rs.getString("location"));
				setJobState(rs.getString("state"));
				setJobOpening(rs.getString("jobopening"));
				setJobSalary(rs.getString("salaryexpected"));
				setJobExperience(rs.getString("workexperience"));
				setJobNoticePeriod(rs.getString("noticeperiod"));
				setJobCreatedBy(rs.getString("createdby"));
				setJobStatus(fetchingJobStatus(jobID));
				companydetails.fetchingCompanyDetails(getJobCreatedBy());
				setJobCompany(companydetails.getCompanyName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void fetchingJobStatus(int userid, int companyid) throws IOException, ClassNotFoundException {
		try {
			Connection con=DbConnector.connect();
			PreparedStatement ps = con.prepareStatement("select * from candidateApplied where userid=?,jobid=?");
			ps.setInt(1, userid);
			ps.setInt(2, companyid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				setJobStatus(rs.getString("status"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String fetchingJobStatus(int jobid) throws IOException, ClassNotFoundException {
		String value = "";
		try {
			String statement = "";
			Connection con=DbConnector.connect();
			statement = "select * from JobResult where jobid=?";

			PreparedStatement ps = con.prepareStatement(statement);
			ps.setInt(1, jobid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				value= rs.getString("jobstatus");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return value;
	}
	
	public void fetchingJobStatus(int id, String type) throws IOException, ClassNotFoundException {
		try {
			String statement = "";
			Connection con=DbConnector.connect();
			if (type.equalsIgnoreCase("userid")) {
				statement = "select * from JobResult where userid=?";
			} else {
				statement = "select * from JobResult where jobid=?";
			}
			PreparedStatement ps = con.prepareStatement(statement);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				setJobStatus(rs.getString("jobstatus"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String ar[]) throws ClassNotFoundException, IOException {
		JobDetails jobdetails = new JobDetails();
		jobdetails.fetchValuesfromDB(1);
		System.out.println(jobdetails.getJobCompany());
		CompanyDetails cd = new CompanyDetails();
		cd.fetchingCompanyDetails(1);
		System.out.println(cd);
	}
}
