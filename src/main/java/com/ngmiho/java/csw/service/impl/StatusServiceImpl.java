package com.ngmiho.java.csw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.StatusDAO;
import com.ngmiho.java.csw.entity.OrderStatus;
import com.ngmiho.java.csw.service.StatusService;

@Service
public class StatusServiceImpl implements StatusService {
	@Autowired
	StatusDAO statusDAO;
	
	List<OrderStatus> findAll() {
		return statusDAO.findAll();
	}
}
