package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Creator;


@Repository
public interface CreatorRepository extends JpaRepository<Creator, Integer> {
 @Query("select c from Creator c where c.username=?1 and c.password=?2 ")
 public Creator checkcreatorLogin(String cusername,String cpwd);
 
 @Query("SELECT c FROM Creator c WHERE c.email = :email")
 Creator findByEmail(@Param("email") String email);

 
 
 
 
}