package com.ngmiho.java.csw.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ngmiho.java.csw.entity.PaymentMethod;

public interface PaymentMethodService {
	PaymentMethod save(PaymentMethod paymentMethod);
	PaymentMethod delete(PaymentMethod paymentMethod);
	PaymentMethod update(PaymentMethod paymentMethod);
	Page<PaymentMethod> findAll(Pageable pageable);
}
