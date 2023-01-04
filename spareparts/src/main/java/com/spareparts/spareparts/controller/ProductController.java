package com.spareparts.spareparts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.entities.UserData;
import com.spareparts.spareparts.repository.ProductRepository;
import com.spareparts.spareparts.services.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductRepository productRepository;
	
	@GetMapping("/goSaveProduct")
	public String GotoSave(Model m) {
		m.addAttribute("seller",Seller.class);
		return "SaveProduct";
	}

	/*insert product*/
    @PostMapping("/saveProduct")
    public String SaveProduct(@RequestParam("file")MultipartFile file,
    		     		      @RequestParam("pname") String pname,
    		     		      @RequestParam("category") String category,
    		     		      @RequestParam("price") int price,
    		     		      @RequestParam("description") String description,
    		     		      @RequestParam("brand") String brand ,
    		     		      @RequestParam("stock") int stock,
    		     		      @ModelAttribute("seller")  Seller seller
    		) {
   
    productService.SaveProductDB(file, pname, category, price, description,stock,brand,seller);
    	return "redirect:/goSaveProduct";
    }
    /* list all product*/
     @GetMapping("/viewAllProuct")
     public String viewAllproduct(Model m) {
     List<Product> list=productRepository.findAll();
     m.addAttribute("viewProduct",list);
     return "listProduct";
     
    	
    }
    @GetMapping("/deleteProd/{id}")
    public String deletbyid(@PathVariable("id")int id) {
    	productService.deleteByproId(id);
    	return "sellerDashboard";
    }
    

}




