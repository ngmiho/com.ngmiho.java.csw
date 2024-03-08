package com.ngmiho.java.csw.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ngmiho.java.csw.entity.OrderDetail;
import com.ngmiho.java.csw.entity.PaymentMethod;

public interface OrderDetailService {
	Page<OrderDetail> findAll(Pageable pageable);
	Page<OrderDetail> findByOrderId(Long orderId, Pageable pageable);
	Page<OrderDetail> findByProductId(Integer productId, Pageable pageable);
}
