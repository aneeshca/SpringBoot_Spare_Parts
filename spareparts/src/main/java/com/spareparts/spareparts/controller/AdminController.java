package com.spareparts.spareparts.controller;

import java.awt.print.Book;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.spareparts.spareparts.entities.Booking;
import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.entities.UserData;
import com.spareparts.spareparts.entities.UserLog;
import com.spareparts.spareparts.repository.ProductRepository;
import com.spareparts.spareparts.services.UserServices;

@Controller
public class AdminController {
	@Autowired
	private UserServices us;
	@Autowired
	private ProductRepository productRepository;

	@GetMapping("/")
	public String home(Model m) {
	    List<Product> list=productRepository.findAll();
	    m.addAttribute("viewPro",list);
	   	return "index";
	}

	@GetMapping("/viewAll")
	public String viewAll(Model m) {
		List<UserLog> all = us.getAll();
	
		m.addAttribute("user", all);
		return "viewAll";
	}

	@GetMapping("/viewsell")
	public String getAllSeller(Model m) {
		List<Seller> li = us.getSeller();
		m.addAttribute("sell", li);
		return "viewSeller";
	}
	@GetMapping("/adUser")
    public String viewAlluser(Model m) {
    	List<UserLog> li= us.getAllUser();
    	m.addAttribute("usr", li);
    	return "AdUser";
    }
	
	
	@GetMapping("deleteSeller/{id}")
	public String deleteByid(@PathVariable("id") int id) {
		System.out.println(id);
		us.deteteSeller(id);
		return "redirect:/viewsell";
	}
	@GetMapping("/Sellerstatus/{id}")
	public String StatusUpdate(@PathVariable("id") int id) {
		us.StatusUpdateSeller("completed", id);
		
		return "redirect:/viewsell";
	}
	
	
	
	@GetMapping("/getAdminBooking")
    public String getAllbooking(Model m){
        List<Booking> book=us.getAllbooking();
        m.addAttribute("booking",book);
    	return "adminBooking";
    }
	
	@GetMapping("deleteUser/{id}")
    public String deleteUser(@PathVariable("id") int id) {
    	us.deleteUserAdmin(id);
    	return "redirect:/adUser";
    }
    

}
