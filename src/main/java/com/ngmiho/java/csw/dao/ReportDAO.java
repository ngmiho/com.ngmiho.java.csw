package com.ngmiho.java.csw.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ngmiho.java.csw.entity.Report;

public interface ReportDAO extends JpaRepository<Report, Integer> {
	@Query("SELECT new Report(o.createdDate, count(o), sum(o.totalPrice)) "
			+ "FROM Order o "
			+ "WHERE o.createdDate = ?1 "
			+ "GROUP BY o.createdDate "
			+ "ORDER BY sum(o.totalPrice) DESC")
	Page<Report> findByCreatedDate(String createdDate, Pageable pageable);
	
	@Query("SELECT new Report(o.createdDate, count(o), sum(o.totalPrice)) "
			+ "FROM Order o "
			+ "WHERE day(o.createdDate) = ?1 "
			+ "GROUP BY o.createdDate "
			+ "ORDER BY sum(o.totalPrice) DESC")
	Page<Report> findByDay(String day, Pageable pageable);
	
	@Query("SELECT new Report(o.createdDate, count(o), sum(o.totalPrice)) "
			+ "FROM Order o "
			+ "WHERE month(o.createdDate) = ?1 "
			+ "GROUP BY o.createdDate "
			+ "ORDER BY sum(o.totalPrice) DESC")
	Page<Report> findByMonth(String month, Pageable pageable);
	
	@Query("SELECT new Report(year(o.createdDate), count(o), sum(o.totalPrice)) "
			+ "FROM Order o "
			+ "WHERE year(o.createdDate) = ?1 "
			+ "GROUP BY year(o.createdDate) "
			+ "ORDER BY sum(o.totalPrice) DESC")
	Page<Report> findByYear(String year, Pageable pageable);
	
	@Query("SELECT new Report(o.createdDate, count(o), sum(o.totalPrice)) "
			+ "FROM Order o "
			+ "WHERE month(o.createdDate) = ?1 AND year(o.createdDate) = ?2 "
			+ "GROUP BY o.createdDate "
			+ "ORDER BY sum(o.totalPrice) DESC")
	Page<Report> findByMonthAndYear(String month, String year, Pageable pageable);
	
	@Query("SELECT new Report(o.createdDate, count(o), sum(o.totalPrice)) "
			+ "FROM Order o "
			+ "WHERE day(o.createdDate) = ?1 AND month(o.createdDate) = ?2 AND year(o.createdDate) = ?3 "
			+ "GROUP BY o.createdDate "
			+ "ORDER BY sum(o.totalPrice) DESC")
	Page<Report> findByDayAndMonthAndYear(String day, String month, String year, Pageable pageable);
	
}
