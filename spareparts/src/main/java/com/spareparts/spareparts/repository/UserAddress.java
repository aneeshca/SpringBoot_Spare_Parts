package com.spareparts.spareparts.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.Address;
@Repository
public interface UserAddress extends JpaRepository<Address, Integer> {
@Query("From Address Where userlog.u_id=:id")
public Address getAddress(int id);
@Modifying
@Transactional
@Query("Update Address set address=:address,phone=:phone,pincode=:pincode,district=:district,state=:state where id=:id ")
public void updateAddress(String address,String phone ,int pincode,String district,String state,int id);
}
