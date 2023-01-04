package com.spareparts.spareparts.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="payments")
public class Payments {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne(cascade = CascadeType.DETACH)
	private UserLog user;
	private String productname;
	private int quantity;
	private float payment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public UserLog getUser() {
		return user;
	}
	public void setUser(UserLog user) {
		this.user = user;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public float getPayment() {
		return payment;
	}
	public void setPayment(float payment) {
		this.payment = payment;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
