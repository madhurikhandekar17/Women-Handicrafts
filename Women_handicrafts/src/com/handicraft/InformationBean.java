package com.handicraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class InformationBean {
	
	private String dbdriver,dburl,dbuser,dbpass;
	
	public String getDbdriver() {
		return dbdriver;
	}


	public void setDbdriver(String dbdriver) {
		this.dbdriver = dbdriver;
	}


	public String getDburl() {
		return dburl;
	}


	public void setDburl(String dburl) {
		this.dburl = dburl;
	}


	public String getDbuser() {
		return dbuser;
	}


	public void setDbuser(String dbuser) {
		this.dbuser = dbuser;
	}


	public String getDbpass() {
		return dbpass;
	}


	public void setDbpass(String dbpass) {
		this.dbpass = dbpass;
	}


	public ArrayList getSubCategories(String category)
	{
		ArrayList lst=new ArrayList();
		
		try {
			Class.forName(dbdriver);
			Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
			
			String query="select * from Project_Products12 where categories=?";
			PreparedStatement stat=con.prepareStatement(query);	
			stat.setString(1,category);
			ResultSet rs=stat.executeQuery();
			
			while(rs.next())
			{
				lst.add(rs.getString(2));		
			}
			stat.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public ArrayList<HandicraftInfo> getInfo(String subcategory)
	{
		ArrayList sublst=new ArrayList();
		
		try {
			Class.forName(dbdriver);
			Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
			
			String query="select * from Project_Products12 where product_name=?";
			
			
			PreparedStatement stat=con.prepareStatement(query);	
			stat.setString(1,subcategory);
			ResultSet rs=stat.executeQuery();
			
			while(rs.next())
			{HandicraftInfo data=new HandicraftInfo();
				data.setProduct_code(rs.getString("product_code"));
				data.setVendorName(rs.getString("vendorName"));
				data.setVendorAddress(rs.getString("vendorAddress"));
				data.setVendorContact(rs.getString("vendorContact"));
				sublst.add(data);		
			}
			stat.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sublst;
	}
	
}
