package com.ngmiho.java.csw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.ReportDAO;
import com.ngmiho.java.csw.entity.Report;
import com.ngmiho.java.csw.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {
	
	@Autowired
	ReportDAO reportDAO;
	
	@Override
	public Page<Report> findByCreatedDate(String createdDate, Pageable pageable) {
		return reportDAO.findByCreatedDate(createdDate, pageable);
	}

	@Override
	public Page<Report> findByDay(String day, Pageable pageable) {
		return reportDAO.findByDay(day, pageable);
	}

	@Override
	public Page<Report> findByMonth(String month, Pageable pageable) {
		return reportDAO.findByMonth(month, pageable);
	}

	@Override
	public Page<Report> findByYear(String year, Pageable pageable) {
		return reportDAO.findByYear(year, pageable);
	}

	@Override
	public Page<Report> findByMonthAndYear(String month, String year, Pageable pageable) {
		return reportDAO.findByMonthAndYear(month, year, pageable);
	}

	@Override
	public Page<Report> findByDayAndMonthAndYear(String day, String month, String year, Pageable pageable) {
		return reportDAO.findByDayAndMonthAndYear(day, month, year, pageable);
	}

}
