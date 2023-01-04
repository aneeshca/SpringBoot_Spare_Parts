package com.spareparts.spareparts.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private	int id;
	private String address;
	private String phone;
	private int pincode;
    private	String district;
    private String state;
    @OneToOne(cascade = CascadeType.ALL)
    private UserLog userlog;
    @OneToOne(cascade = CascadeType.ALL)
    private UserData user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public UserData getUser() {
		return user;
	}
	public void setUser(UserData user) {
		this.user = user;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public UserLog getUserlog() {
		return userlog;
	}
	public void setUserlog(UserLog userlog) {
		this.userlog = userlog;
	}
    

}
