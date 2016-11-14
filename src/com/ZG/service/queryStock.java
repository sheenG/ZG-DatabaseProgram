package com.ZG.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

import com.ZG.model.stockInfo;
import com.ZG.model.userTable;

public class queryStock {

	private Connection conn;
	private PreparedStatement pstmt;
	
	public queryStock(){
		this.conn=new com.ZG.conn.conn().getCon();	
	}
	
	public List getStockInfo(stockInfo si){
		try {
			List list = new ArrayList();
			pstmt=conn.prepareStatement("select * from stock where stockId=?");
			pstmt.setString(1, si.getStockId());
			ResultSet rs=pstmt.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
			int size=rsmd.getColumnCount();
			if(rs.next()){
				stockInfo sI=new stockInfo();
				sI.setStockId(rs.getString(1));
				sI.setStockName(rs.getString(2));
				sI.setStockPrice(rs.getString(3));
				sI.setStockLoc(rs.getString(4));
				sI.setStockComment(rs.getString(5));
				list.add(sI);
				return list;
			}else
				return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
}
