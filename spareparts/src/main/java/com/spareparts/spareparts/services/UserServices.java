package com.spareparts.spareparts.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spareparts.spareparts.entities.Address;
import com.spareparts.spareparts.entities.Booking;
import com.spareparts.spareparts.entities.Cart;
import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.entities.UserData;
import com.spareparts.spareparts.entities.UserLog;
import com.spareparts.spareparts.repository.BookingRepository;
import com.spareparts.spareparts.repository.CartRepository;
import com.spareparts.spareparts.repository.ProductRepository;
import com.spareparts.spareparts.repository.SellerRepository;
import com.spareparts.spareparts.repository.UserAddress;
import com.spareparts.spareparts.repository.UserLogin;
import com.spareparts.spareparts.repository.UserRegister;

@Service
public class UserServices {
	@Autowired
	UserRegister ur;
	@Autowired
	UserLogin ul;
	@Autowired
	UserAddress ua;
	@Autowired
    private	SellerRepository sellerRepository;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private BookingRepository bookingRepository;
	@Autowired
	private CartRepository cartRepository;

	public boolean getEmail(String email) {
		return ul.existsByEmail(email);

	}

	public UserLog checkLog(String email, String password) {
		return ul.findByEmailAndPassword(email, password);

	}
	
   /*user registration*/
	public int SaveUser(UserData ud, UserLog lg) {
	    Address ad=new Address(); 
	    ur.save(ud);
		lg.setUser(ud);
		ul.save(lg);
		ad.setUser(ud);
		ad.setUserlog(lg);
		ua.save(ad);
		
		return 1;
	}
	/*All user data*/
	public List<UserLog> getAll(){
		return ul.findAll();
	}
	/*Insert Seller*/
	public int SaveSeller(UserData ud,UserLog lg) {
		ur.save(ud);
		lg.setUser(ud);
		ul.save(lg);
		return 1;
	
	}
	/*select seller type user*/
	public List<Seller> getSeller(){
		
		return sellerRepository.findAll();
		
	}
	/*delete seller*/
	public void deteteSeller(int id) {
	 sellerRepository.deleteById(id);	
	
	}
	/*get All user*/
	public List<UserLog> getAllUser(){
		return ul.getUsers();
	}
	public Product getProductByid(int id) {
		
		return productRepository.getById(id);
	}
	
	public UserLog getuserbyid(int uid) {
		return ul.getUserbyid(uid);
	}
	public void ProductBook(Booking b) {
		bookingRepository.save(b);
		
	}
	 public void stockProduct(int stock,int id) {
		 productRepository.stockProduct(stock, id); 
	 }
	
	public List<Booking> bookList(int ul) {
	return	bookingRepository.getbooking(ul);
		
	}
	public UserLog GetUserbyId(int id) {
		return ul.getById(id);
	}
	
	
	 public Address getAddressbyid(int id) {
		 return ua.getAddress(id);
	 }
	 public void updateuser(UserData u) {
		 ur.save(u);
	 }
	 public void updateAddress(String address,String phone ,int pincode,String district,String state,int id) {
		 ua.updateAddress(address, phone, pincode, district, state, id);
	 }
	 	public void addToCart(Cart cr) {
	 		
	 	cartRepository.save(cr);	
	 		
	 	}
	  public List<Cart> getCart(int id) {
		return cartRepository.getCart(id);
	}
	  
	  
	  public void removeCart(int id) {
		  cartRepository.deleteById(id);
	  }
	  
	  public void cancelProduct(int id) {
		  bookingRepository.deleteById(id);
	  }
	  public List<Booking> getAllbooking(){
		  return bookingRepository.findAll();
	  }
	  public void StatusUpdateSeller(String status ,int id) {
		  sellerRepository.updateStatus(status, id);
	  }
	  public void deleteUserAdmin(int id) {
		  ul.deleteUser(id);
	  }
	  
}
