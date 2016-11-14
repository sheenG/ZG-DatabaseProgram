package com.ZG.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ZG.model.userTable;

public class signService {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public signService(){
		this.conn=new com.ZG.conn.conn().getCon();	
	}
	
	public int addUser(userTable user){
		try {
			pstmt=conn.prepareStatement("insert into user"+
		"(username,id,password,birthday,balance,warehouseNumber)"+ 
		"values(?,?,?,null,null,null)");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPassword());
			int rs= pstmt.executeUpdate();
			if(rs!=0)
				return 1;
			else 
				return 0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}

}
