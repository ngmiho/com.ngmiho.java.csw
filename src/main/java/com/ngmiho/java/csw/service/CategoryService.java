package com.ngmiho.java.csw.service;

import java.util.List;

import com.ngmiho.java.csw.entity.Category;

public interface CategoryService {
	Category save(Category category);
	Category delete(Category category);
	Category update(Category category);
	List<Category> findAll();
}
