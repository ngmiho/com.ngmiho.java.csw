package com.ngmiho.java.csw.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.PaymentMethod;

public interface PaymentMethodDAO extends JpaRepository<PaymentMethod, Integer> {
	Page<PaymentMethod> findAll(Pageable pageable);
}
