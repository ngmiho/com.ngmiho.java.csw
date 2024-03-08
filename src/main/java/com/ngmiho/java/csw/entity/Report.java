package com.ngmiho.java.csw.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class Report {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private LocalDateTime createDate;
	private Long quantity;
	private Double totalPrice;
	
	public Report(LocalDateTime createDate, Long quantity, Double totalPrice) {
		super();
		this.createDate = createDate;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	
	public Report(Integer year, Long quantity, Double totalPrice) {
		super();
		LocalDateTime createDate = LocalDateTime.of(year, 1, 1, 0, 0);
		this.createDate = createDate;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
}
