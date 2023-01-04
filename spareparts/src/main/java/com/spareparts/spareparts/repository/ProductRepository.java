package com.spareparts.spareparts.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{
     @Query("From Product where seller_id=:id")
     public List<Product> getbyId(int id);
     
     @Modifying
     @Transactional
     @Query("delete from Product  where id=:id")
     public void deleteProductByid(int id );
     
     @Modifying
     @Transactional 
     @Query("Update Product set pname=:pname, category=:category,brand=:brand,price=:price,description=:description,stock=:stock,image=:image,seller=:seller where id=:id")
     public void updateProduct(String pname,String category ,String brand,int price,String description,int stock,String image,Seller seller,int id);

     @Modifying
     @Transactional 
     @Query("Update Product set stock=:stock where id=:id")
     public void stockProduct(int stock,int id);
   
     
     
     @Query("FROM Product  WHERE CONCAT(pname, category, brand, price, description) LIKE %:keyword%")
     public List<Product> searchByKeyword(String keyword);
}





