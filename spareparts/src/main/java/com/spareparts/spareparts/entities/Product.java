package com.spareparts.spareparts.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String pname;
private String category;
private String brand;
private int price;
private String description;
private int stock;
@Lob
@Column(columnDefinition = "MEDIUMBLOB")
private String image; 	 			 
@ManyToOne(cascade = CascadeType.DETACH)
private Seller seller;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
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
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public Seller getSeller() {
	return seller;
}
public void setSeller(Seller seller) {
	this.seller = seller;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public int getStock() {
	return stock;
}
public void setStock(int stock) {
	this.stock = stock;
}



}
