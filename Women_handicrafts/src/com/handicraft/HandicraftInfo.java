package com.handicraft;

public class HandicraftInfo {
	
	private String product_code,vendorName,vendorAddress,vendorContact;

	public String getProduct_code() {
		return product_code;
	}

	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getVendorAddress() {
		return vendorAddress;
	}

	public void setVendorAddress(String vendorAddress) {
		this.vendorAddress = vendorAddress;
	}

	public String getVendorContact() {
		return vendorContact;
	}

	public void setVendorContact(String vendorContact) {
		this.vendorContact = vendorContact;
	}

	@Override
	public String toString() {
		return "HandicraftInfo [product_code=" + product_code + ", vendorName="
				+ vendorName + ", vendorAddress=" + vendorAddress
				+ ", vendorContact=" + vendorContact + "]";
	}

	
	
}
