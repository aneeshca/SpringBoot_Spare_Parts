package com.spareparts.spareparts.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.Booking;
import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.UserLog;
@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer>{
	@Query("From Booking where userlog.u_id=:id")
	public List<Booking> getbooking(int id);
	
	@Query("From Booking where seller.id=:id")
	public List<Booking> getCustomer(int id);
	
	@Modifying
	@Transactional
	@Query("Update Booking set bookingstatus=:status where id=:id")
	public void updateBookingStatus(String status ,int id);
}