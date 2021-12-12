package com.example.ecommerce.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.example.ecommerce.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{
	
	/*
	 * list of books by category
	 * */
	@RestResource(path = "categoryid")
	Page<Product> findByCategoryId(@Param("id") Long id, Pageable pageable);
	
	/*
	 * list of books by name contains
	 * */
	@RestResource(path = "searchbykeyword")
	Page<Product> findByNameContaining(@Param("name") String keyword, Pageable pageable);
}
