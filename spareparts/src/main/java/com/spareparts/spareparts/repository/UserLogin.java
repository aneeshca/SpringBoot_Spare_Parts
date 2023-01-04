package com.spareparts.spareparts.repository;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.Address;
import com.spareparts.spareparts.entities.UserLog;
@Repository
public interface UserLogin extends JpaRepository<UserLog, Integer> {
	public boolean existsByEmail(String email);
	public UserLog findByEmailAndPassword(String email,String password);
    @Query("From UserLog Where utype='user'")
	public List<UserLog> getUsers();
    
    @Query("delete from UserLog Where user=:id")
    public void DeleteSell(int id);
    
    @Query("From UserLog Where user.id=:uid")
	public UserLog getUserbyid(int uid);
   
    @Query("From Address Where userlog.id=:uid")
   	public Address getAddressbyid(int uid);
     
    @Modifying
    @Transactional
    @Query("delete From UserLog where u_id=:id")
    public void deleteUser(int id);
  
}
