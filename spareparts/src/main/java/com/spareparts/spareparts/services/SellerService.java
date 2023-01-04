package com.spareparts.spareparts.services;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.spareparts.spareparts.entities.Booking;
import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.repository.BookingRepository;
import com.spareparts.spareparts.repository.ProductRepository;
import com.spareparts.spareparts.repository.SellerRepository;

@Service
public class SellerService {
	@Autowired
   private SellerRepository sellerRepository;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private BookingRepository bookingRepository;
   
   public boolean emailExist(String email) {
	    return   sellerRepository.existsByEmail(email);
   }
   
   public int saveSeller(Seller s) {
	   sellerRepository.save(s);
	    return 1; 
   }
   
   
   public  Seller getEmailandPassword(String email,String password) {
	   
	   return sellerRepository.findByEmailAndPassword(email, password);
   }
	
	public List<Product> getall(int id){
	   return	productRepository.getbyId(id);
	}
	
	public Product getProductbyId(int id) {
		return productRepository.getById(id);
	}
	

	
public void UpdateProductDB(MultipartFile file,Product p) {
	 String fileName=StringUtils.cleanPath(file.getOriginalFilename());
	 if(fileName.contains("..")) {
		 System.out.println("not avalid file type");
	 }else {
		 try {
			p.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			System.out.println(e);
			e.printStackTrace();
		}
	 }
	 
	 productRepository.updateProduct(p.getPname() , p.getCategory(), p.getBrand(), p.getPrice(), p.getDescription(), p.getStock(), p.getImage(), p.getSeller(),p.getId());;
		
}

public List<Booking> getCustomer(int id){
	return bookingRepository.getCustomer(id);
}
public void deliveredProduct(String status,int id ) {
	bookingRepository.updateBookingStatus(status, id);
}
	
}
