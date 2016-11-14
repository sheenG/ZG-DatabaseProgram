package com.ZG.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

import com.ZG.model.stockInfo;
import com.ZG.model.userTable;

public class queryUser {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public queryUser(){
		this.conn=new com.ZG.conn.conn().getCon();	
	}
	
	public userTable getUserInfo(String userId){
		try {
			userTable ut=new userTable();
			pstmt=conn.prepareStatement("select * from user where id=?");
			pstmt.setString(1, userId);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				ut.setUsername(rs.getString(1));
				ut.setId(rs.getString(2));
				ut.setPassword(rs.getString(3));
				ut.setBirthday(rs.getString(4));
				ut.setBalance(rs.getString(5));
				ut.setWarehouseNumber(rs.getString(6));
				return ut;
			}else 
				return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	
}
