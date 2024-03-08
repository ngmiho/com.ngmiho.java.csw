package com.ngmiho.java.csw.dao;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	Page<Product> findAll(Pageable pageable);
	Product findById(int id);
	Page<Product> findByNameContaining(String name, Pageable pageable);
	Page<Product> findByCategoryId(Integer id, Pageable pageable);
}
