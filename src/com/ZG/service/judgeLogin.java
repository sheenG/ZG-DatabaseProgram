package com.ZG.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ZG.model.userTable;

public class judgeLogin {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	public judgeLogin(){
		this.conn=new com.ZG.conn.conn().getCon();	
	}
	
	public boolean judgeUser(userTable user){
		try {
			pstmt=conn.prepareStatement("select * from user where id=? and password=?");
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPassword());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
				return true;
			else 
				return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
}
