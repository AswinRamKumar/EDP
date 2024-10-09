package com.example.demo.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.*;

import com.example.demo.sign;

public interface signrepo extends CrudRepository<sign,String>
{
	List<sign> findAll();
	long countByUsername(String username);
	
	long countByPasswordAndUsername(String password, String username);
	
	@Query("SELECT CONCAT(FirstName,' ', LastName) AS name FROM sign WHERE username = :username")
	String findFullNameByUsername(@Param("username") String username);
	sign findByUsername(String username);
	
	@Query("SELECT s FROM sign s WHERE s.username = :username")
	sign findAllByUsername(String username);
	
	@Query("SELECT  DISTINCT FirstName AS name FROM sign WHERE username = :username")
	String findNameByUsername(@Param("username") String username);

}
