package com.spareparts.spareparts.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spareparts.spareparts.entities.Booking;
import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.repository.ProductRepository;
import com.spareparts.spareparts.services.SellerService;

@Controller
public class SellerController {
	@Autowired
	private SellerService sellerService;
	
	
	
	@GetMapping("/gotoSeller")
  public String gotSeller() {
	  return "seller";
  }
	

	
	@GetMapping("/sellReg")
	public String sellReg(Model m) {
		m.addAttribute("seller",Seller.class);
   	   return "regFormSeller";
	}
	
	
	@PostMapping("/SellerReg")
	public String AddProduct(@ModelAttribute("seller") Seller sl,Model m) {
		System.out.println(sl.getEmail());
	boolean e=sellerService.emailExist(sl.getEmail());
	
	if(e) {
		m.addAttribute("exist","*the given email address already taken");
		return "regFormSeller";
		
	}else {
		sl.setStatus("pending");
		int i=sellerService.saveSeller(sl);
		if(i != 0) {
			System.out.println("sucess");
			return "loginSeller";
		}else {
			System.out.println("faild");
			m.addAttribute("faild","faild to register ");
			return "regFormSeller";
		}
		
		
		
		
	}
	   
	    		
	}
	@GetMapping("/sellog")
	public String sellLogin(Model m) {
		m.addAttribute("seller",Seller.class);
		return "loginSeller";
	}
	@PostMapping("/selllogin")
	public String SelLog(@ModelAttribute("seller")Seller sl,Model m ,HttpSession session) {
		
		
		
		Seller s=sellerService.getEmailandPassword(sl.getEmail(), sl.getPassword());
		if(s!=null) {
			if(s.getStatus().equals("pending")) {
				m.addAttribute("error", "*you cant login right now,adim not varified your account");
	            return "loginSeller";		
			}else {
				session.setAttribute("session",s);
				return "sellerDashboard";
			}
		
		}else {
			m.addAttribute("error","email or password is incorrect");
			return "loginSeller";
		}
		
	}
	 @GetMapping("/selProView/{id}")
	 public String viewAll(Model m ,@PathVariable("id") int id) {
		 List<Product> pr=sellerService.getall(id);
		 System.out.println(pr);
		 m.addAttribute("product", pr);
		 return "SellerList";
	 
	 }

	 
	 @GetMapping("/goProUpdate/{id}")
	public String updatePage(Model m,@PathVariable("id") int id) {
	 m.addAttribute("upd",Product.class);
	 Product pr=sellerService.getProductbyId(id);
	 m.addAttribute("product", pr);
		System.out.println(pr);
		return "productUpdate";
	}
	
	@PostMapping("/SelupdateProduct")
	public String updateProduct(
			 @RequestParam("file")MultipartFile file,@ModelAttribute("upd") Product p) {
		 	System.out.println(p); 	
	      sellerService.UpdateProductDB(file,p);
	    
		return "sellerDashboard";
	}
	
	@GetMapping("/customerBooking")
	public String viewCustomers(HttpSession session,Model m) {
		Seller seller=(Seller)session.getAttribute("session");
		
	List<Booking>book=sellerService.getCustomer(seller.getId());
	m.addAttribute("customer",book);
	return "viewSellerBooking";
	}
	
	@GetMapping("/delivered/{bid}")
   public String delivered(@PathVariable("bid") int id) {
	   sellerService.deliveredProduct("delivered", id);
	   return "redirect:/customerBooking";
   }
	
}
