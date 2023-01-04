package com.spareparts.spareparts.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.UserData;
@Repository
public interface UserRegister extends JpaRepository<UserData, Integer>  {

}
