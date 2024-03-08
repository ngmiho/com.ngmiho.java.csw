package com.ngmiho.java.csw.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
	Page<OrderDetail> findAll(Pageable pageable);
	Page<OrderDetail> findByOrderId(Long orderId, Pageable pageable);
	Page<OrderDetail> findByProductId(Integer productId, Pageable pageable);
	Page<OrderDetail> findBy(Pageable pageable);
}
