package com.ngmiho.java.csw.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.OrderStatus;

public interface StatusDAO extends JpaRepository<OrderStatus, Integer> {
}
