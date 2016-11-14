package com.ZG.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ZG.model.userTable;

public class updateUserData {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public updateUserData(){
		this.conn=new com.ZG.conn.conn().getCon();	
	}
	
	public boolean updateUser(userTable ut){
		try {
			pstmt=conn.prepareStatement("update user set username=?,birthday=? where id=? ");
			pstmt.setString(1,ut.getUsername());
			pstmt.setString(2,ut.getBirthday());
			pstmt.setString(3,ut.getId());
			int rs= pstmt.executeUpdate();
			if(rs!=0)
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
