package com.ngmiho.java.csw.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, Integer> {
}
