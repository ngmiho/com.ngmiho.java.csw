package com.ngmiho.java.csw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.PaymentMethodDAO;
import com.ngmiho.java.csw.entity.PaymentMethod;
import com.ngmiho.java.csw.service.PaymentMethodService;

@Service
public class PaymentMethodServiceImpl implements PaymentMethodService {
	
	@Autowired
	PaymentMethodDAO paymentMethodDAO;
	
	@Override
	public PaymentMethod save(PaymentMethod paymentMethod) {
		return paymentMethodDAO.save(paymentMethod);
	}

	@Override
	public PaymentMethod delete(PaymentMethod paymentMethod) {
		return paymentMethodDAO.save(paymentMethod);
	}

	@Override
	public PaymentMethod update(PaymentMethod paymentMethod) {
		return paymentMethodDAO.save(paymentMethod);
	}

	@Override
	public Page<PaymentMethod> findAll(Pageable pageable) {
		return paymentMethodDAO.findAll(pageable);
	}
	
}
