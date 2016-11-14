package com.ZG.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	public Connection getCon(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/ZG?useUnicode=true&characterEncoding=utf-8&useSSL=true";
			String user="root";
			String password="123456";
			Connection conn=DriverManager.getConnection(url,user,password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
	}
}
