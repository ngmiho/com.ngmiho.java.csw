package com.ngmiho.java.csw.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ngmiho.java.csw.entity.Report;

public interface ReportService {
	Page<Report> findByCreatedDate(String createdDate, Pageable pageable);
	Page<Report> findByDay(String day, Pageable pageable);
	Page<Report> findByMonth(String month, Pageable pageable);
	Page<Report> findByYear(String year, Pageable pageable);
	Page<Report> findByMonthAndYear(String month, String year, Pageable pageable);
	Page<Report> findByDayAndMonthAndYear(String day, String month, String year, Pageable pageable);
}
