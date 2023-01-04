package com.spareparts.spareparts.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="cart")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int cid;
@OneToOne(cascade = CascadeType.DETACH)
private Product pro;
@OneToOne(cascade = CascadeType.DETACH)
private UserData ud;
@OneToOne(cascade = CascadeType.DETACH)
private UserLog userLog;
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public Product getPro() {
	return pro;
}
public void setPro(Product pro) {
	this.pro = pro;
}
public UserData getUd() {
	return ud;
}
public void setUd(UserData ud) {
	this.ud = ud;
}
public UserLog getUserLog() {
	return userLog;
}
public void setUserLog(UserLog userLog) {
	this.userLog = userLog;
}

}
