package com.ngmiho.java.csw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.OrderDetailDAO;
import com.ngmiho.java.csw.entity.OrderDetail;
import com.ngmiho.java.csw.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@Override
	public Page<OrderDetail> findAll(Pageable pageable) {
		return orderDetailDAO.findAll(pageable);
	}

	@Override
	public Page<OrderDetail> findByOrderId(Long orderId, Pageable pageable) {
		return orderDetailDAO.findByOrderId(orderId, pageable);
	}

	@Override
	public Page<OrderDetail> findByProductId(Integer productId, Pageable pageable) {
		return orderDetailDAO.findByProductId(productId, pageable);
	}

}
