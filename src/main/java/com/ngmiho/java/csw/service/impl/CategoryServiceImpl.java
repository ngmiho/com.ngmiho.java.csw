package com.ngmiho.java.csw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.CategoryDAO;
import com.ngmiho.java.csw.entity.Category;
import com.ngmiho.java.csw.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Override
	public Category save(Category category) {
		return categoryDAO.save(category);
	}

	@Override
	public Category delete(Category category) {
		return categoryDAO.save(category);
	}

	@Override
	public Category update(Category category) {
		return categoryDAO.save(category);
	}
	
	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}

}
