package com.usermanagment.util;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class CreateConnection {


	private static String dname="com.mysql.jdbc.Driver";
	private static String url="jdbc:mysql://localhost:3306/adjt68";
	private static String username="root";
	private static String password="root";
	public static Connection initConnection()
	{
		Connection con=null;
	  try {
		Class.forName(dname);
		 con=(Connection) DriverManager.getConnection(url, username, password);
	  }
	  catch(Exception e)
	  {
		System.out.println(e);
	  }
	return con;
	}
}
