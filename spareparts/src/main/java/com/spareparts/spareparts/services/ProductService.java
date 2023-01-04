package com.spareparts.spareparts.services;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.entities.UserData;
import com.spareparts.spareparts.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;

	public void SaveProductDB(MultipartFile file,String pname,String category,int price,String description,int stock,String brand,Seller ud) {
		Product p=new Product();
		String fileName=StringUtils.cleanPath(file.getOriginalFilename());
		if(fileName.contains("..")) {
			System.out.println("not a valid image file");
		}
		p.setPname(pname);
		p.setCategory(category);
		p.setPrice(price);
		p.setDescription(description);
		p.setBrand(brand);
		p.setSeller(ud);
		p.setStock(stock);
	
		try {
			p.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		productRepository.save(p);
	}
	
	public void deleteByproId(int id) {
		productRepository.deleteProductByid(id);
	}
	
	 public List<Product> SearchAll(String keyword) {
	        if (keyword != null) {
	           return productRepository.searchByKeyword(keyword);
	    }else {
	           return productRepository.findAll();
	    }
	 }
}
