package com.spareparts.spareparts.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="userLogin")
public class UserLog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int u_id;
	private String email;
	private String password;
	private String utype;
	@OneToOne(cascade = CascadeType.ALL)
	private UserData user;

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public UserData getUser() {
		return user;
	}
	public void setUser(UserData user) {
		this.user = user;
	}
	public String getUtype() {
		return utype;
	}
	public void setUtype(String utype) {
		this.utype = utype;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

}
