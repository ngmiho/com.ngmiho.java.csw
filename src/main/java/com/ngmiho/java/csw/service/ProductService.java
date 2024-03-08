package com.ngmiho.java.csw.service;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ngmiho.java.csw.entity.Product;

public interface ProductService {
	Product save(Product product);
	Product delete(Product product);
	Product update(Product product);
	Page<Product> findAll(Pageable pageable);
	Product findById(int id);
	Page<Product> findByNameContaining(String name, Pageable pageable);
	Page<Product> findByCategoryId(Integer id, Pageable pageable);
}
