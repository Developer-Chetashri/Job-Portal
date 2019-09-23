package com.niit.jobportal.utility;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbConnector {
	static Properties dbProperties=null;
	static Connection jdbcConnection=null;
	static FileInputStream fis=null;
	
	public static void jdbcProperties() throws IOException {
		dbProperties =new Properties();
		fis=new FileInputStream("E:\\Eclipse-Workspace\\JobSearch\\src\\com\\niit\\jobportal\\utility\\mysqlJDBC.properties");
		dbProperties.load(fis);
		//System.out.println("in property");
		fis.close();
	}
	public static Connection connect() throws IOException, SQLException
	{
		//System.out.println("in connect");
		jdbcProperties();
		String driver=dbProperties.getProperty("mysqlJDBC.driver");
		String url=dbProperties.getProperty("mysqlJDBC.url");
		String userName=dbProperties.getProperty("mysqlJDBC.userName");
		String pswd=dbProperties.getProperty("mysqlJDBC.pswd");
		if(jdbcConnection == null || jdbcConnection.isClosed())
		{
			try
			{
				Class.forName(driver);
			}
			catch(ClassNotFoundException ce)
			{
				throw new SQLException(ce);
			}
		}
		return jdbcConnection=DriverManager.getConnection(url,userName,pswd);
	}
}
