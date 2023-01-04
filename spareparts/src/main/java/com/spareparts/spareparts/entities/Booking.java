package com.spareparts.spareparts.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="booking")
public class Booking {
	@Id
	@GeneratedValue(strategy =GenerationType.AUTO )
private int id;
	private String bookingstatus;
	
	@ManyToOne(cascade = CascadeType.DETACH)
private Product product;
	@ManyToOne(cascade = CascadeType.DETACH)
private UserData user;
	@ManyToOne(cascade = CascadeType.DETACH)
private Seller seller;
	@ManyToOne(cascade = CascadeType.DETACH)
	private UserLog userlog;
	@ManyToOne(cascade = CascadeType.DETACH)
	private Address address;
	
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public UserData getUser() {
	return user;
}
public void setUser(UserData user) {
	this.user = user;
}
public UserLog getUserlog() {
	return userlog;
}
public void setUserlog(UserLog userlog) {
	this.userlog = userlog;
}
public Seller getSeller() {
	return seller;
}
public void setSeller(Seller seller) {
	this.seller = seller;
}
public Address getAddress() {
	return address;
}
public void setAddress(Address address) {
	this.address = address;
}
public String getBookingstatus() {
	return bookingstatus;
}
public void setBookingstatus(String bookingstatus) {
	this.bookingstatus = bookingstatus;
}

}
