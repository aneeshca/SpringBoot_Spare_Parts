package com.spareparts.spareparts.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer> {
	public boolean existsByEmail(String email);
	public Seller findByEmailAndPassword(String email,String password);
	
	@Query("From Seller ")
	public Seller getsellerByid();
	
	@Modifying
	@Transactional
	@Query("Update Seller set status=:status where id=:id")
	public void updateStatus(String status,int id);
	
}
