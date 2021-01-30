package com.c3s;

import java.sql.*;
public class GetCon {
private GetCon(){}

public static Connection con;
static{
	try {
		Class.forName(DBInitializer.DRIVER);
		con=DriverManager.getConnection(DBInitializer.CON_STRING,DBInitializer.USERNAME,DBInitializer.PASSWORD);
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}

}

