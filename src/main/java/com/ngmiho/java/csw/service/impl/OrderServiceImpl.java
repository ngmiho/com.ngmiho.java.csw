package com.ngmiho.java.csw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.OrderDAO;
import com.ngmiho.java.csw.entity.Order;
import com.ngmiho.java.csw.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDAO orderDAO;
	
	@Override
	public Order save(Order order) {
		return orderDAO.save(order);
	}

	@Override
	public Order delete(Order order) {
		return orderDAO.save(order);
	}

	@Override
	public Order update(Order order) {
		return orderDAO.save(order);
	}

	@Override
	public Page<Order> findAll(Pageable pageable) {
		return orderDAO.findAll(pageable);
	}

	@Override
	public Page<Order> findByCreatedDate(String createdDate, Pageable pageable) {
		return orderDAO.findByCreatedDate(createdDate, pageable);
	}

	@Override
	public Page<Order> findByTotalPriceBetween(Double min, Double max, Pageable pageable) {
		return orderDAO.findByTotalPriceBetween(min, max, pageable);
	}

	@Override
	public Page<Order> findByDistrictContaining(String district, Pageable pageable) {
		return orderDAO.findByDistrictContaining(district, pageable);
	}

	@Override
	public Page<Order> findByPaymentMethodId(String paymentMethodId, Pageable pageable) {
		return orderDAO.findByPaymentMethodId(paymentMethodId, pageable);
	}

	@Override
	public Page<Order> findByOrderRecordId(String orderRecordId, Pageable pageable) {
		return orderDAO.findByOrderRecordId(orderRecordId, pageable);
	}

	@Override
	public Page<Order> findByAccountUserName(String accountId, Pageable pageable) {
		return orderDAO.findByAccountUserName(accountId, pageable);
	}

}
