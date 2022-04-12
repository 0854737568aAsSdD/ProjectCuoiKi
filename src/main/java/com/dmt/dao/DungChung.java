package com.dmt.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception
	{
		// xac dinh he quan tri co so du lieu
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    	System.out.println("Da xac dinh");
    	String url="jdbc:sqlserver://DESKTOP-RE8HTG2:1433;databaseName=QlPhone;user=sa;password=123";
    	cn= DriverManager.getConnection(url);
    	System.out.println("Da ket noi");
	}

}
