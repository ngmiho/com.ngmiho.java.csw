package com.ngmiho.java.csw.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.ProductDAO;
import com.ngmiho.java.csw.entity.Product;
import com.ngmiho.java.csw.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDAO productDAO;
	
	@Override
	public Product save(Product product) {
		return productDAO.save(product);
	}

	@Override
	public Product delete(Product product) {
		return productDAO.save(product);
	}

	@Override
	public Product update(Product product) {
		return productDAO.save(product);
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return productDAO.findAll(pageable);
	}

	@Override
	public Product findById(int id) {
		return productDAO.findById(id);
	}

	@Override
	public Page<Product> findByNameContaining(String name, Pageable pageable) {
		return productDAO.findByNameContaining(name, pageable);
	}

	@Override
	public Page<Product> findByCategoryId(Integer id, Pageable pageable) {
		return productDAO.findByCategoryId(id, pageable);
	}

}
