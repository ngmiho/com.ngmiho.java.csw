package com.ngmiho.java.csw.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {
	Page<Order> findAll(Pageable pageable);
	Page<Order> findByCreatedDate(String createdDate, Pageable pageable);
	Page<Order> findByTotalPriceBetween(Double min, Double max, Pageable pageable);
	Page<Order> findByDistrictContaining(String district, Pageable pageable);
	Page<Order> findByPaymentMethodId(String paymentMethodId, Pageable pageable);
	Page<Order> findByOrderRecordId(String orderRecordId, Pageable pageable);
	Page<Order> findByAccountUserName(String accountId, Pageable pageable);
}
