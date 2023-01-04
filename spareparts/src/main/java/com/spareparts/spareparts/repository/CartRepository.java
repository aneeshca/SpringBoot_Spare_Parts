package com.spareparts.spareparts.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spareparts.spareparts.entities.Cart;
@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
@Query("From Cart where userLog.u_id=:id")
public List<Cart> getCart(int id);
}
