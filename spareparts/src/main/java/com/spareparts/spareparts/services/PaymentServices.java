package com.spareparts.spareparts.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spareparts.spareparts.entities.Payments;
import com.spareparts.spareparts.repository.PaymentRepository;

@Service
public class PaymentServices {
	@Autowired
	private PaymentRepository paymentRepository;
	
public void savePayment(Payments pay) {
	paymentRepository.save(pay);
}
public List<Payments> listPayment(){
	return paymentRepository.findAll();
}
}
