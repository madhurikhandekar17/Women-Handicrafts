package com.handicraft;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VendorRegistrationBean 
{

	private String vname,pname,category,details,address,contact;
	private String dbdriver,dburl,dbuser,dbpass;
	private String pic1;
	
	
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
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
	
	
	public boolean saveVendor()
	{
		try {
			
			System.out.println(pic1);
			
			FileInputStream fis=new FileInputStream("d:\\"+pic1);
			FileOutputStream fos=new FileOutputStream("Z:\\SnehalD\\Project\\WomenHandicrafts\\Women_handicrafts\\WebContent\\images\\"+pname+"1.jpg");
			int ch=0;

			while((ch=fis.read())!=-1)
			{
				fos.write(ch);
			}
			
			fis.close();
			fos.close();
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
		
		
		try {
			Class.forName(dbdriver);
			Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
			String query="insert into Project_products12(categories,product_name,product_code,product_details,vendorName,vendorAddress,vendorContact) values(?,?,productcode.nextval,?,?,?,?)";
			PreparedStatement stat=con.prepareStatement(query);
			stat.setString(1,category);
			stat.setString(2,pname);
			stat.setString(3,details);
			stat.setString(4,vname);
			stat.setString(5,address);
			stat.setString(6,contact);
			
			
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
