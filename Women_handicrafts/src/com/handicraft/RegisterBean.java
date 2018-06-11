package com.handicraft;

import java.sql.*;
public class RegisterBean {
	
	private String fname,lname,gender,address,contact_no,email;
	private String dbdriver,dburl,dbuser,dbpass;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	
	public boolean saveUser()
	{
		try {
			Class.forName(dbdriver);
			Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
			String query="insert into Project_User12 values(?,?,?,?,?,?,?)";
			PreparedStatement stat=con.prepareStatement(query);
			stat.setString(1,fname);
			stat.setString(2,lname);
			stat.setString(3,gender);
			stat.setString(4,address);
			stat.setString(5,contact_no);
			stat.setString(6,email);
			stat.setString(7,"XYZ");
			
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
