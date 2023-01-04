package com.spareparts.spareparts.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.Payments;
@Repository
public interface PaymentRepository extends JpaRepository<Payments, Integer>{

	
	
}
