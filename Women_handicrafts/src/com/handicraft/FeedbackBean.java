package com.handicraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FeedbackBean {
	private String name,rating,comments;
	private String dbdriver,dburl,dbuser,dbpass;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
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
	
	public boolean saveFeedback()
	{
		
		try {
			
			int rate=Integer.parseInt(rating);
			
			Class.forName(dbdriver);
			Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
			String query="insert into Project_Feedback12 values(?,?,?)";
			PreparedStatement stat=con.prepareStatement(query);
			stat.setString(1,name);
			stat.setInt(2,rate);
			stat.setString(3,comments);
			
			ResultSet rs=stat.executeQuery();
			int nrows=stat.executeUpdate();
			
			if(nrows>0){
					stat.close();
					con.close();
					return true;		
			}
			else{
				return false;
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
