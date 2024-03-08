package com.ngmiho.java.csw.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter
@Entity
@Table(name = "products")
public class Product implements Serializable {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(columnDefinition = "varchar(50)")
	@NotBlank(message = "{NotBlank.product.name}")
	@Size(max = 50, message = "{Size.product.name}")
	private String name;
	
	private Float price;
	
	@Column(columnDefinition = "varchar(MAX)")
	@Size(max = 255, message = "{Size.product.descripe}")
	private String describe;
	
	@Column(columnDefinition = "varchar(100)")
	@NotBlank(message = "{NotBlank.product.image}")
	@Size(max = 100, message = "{Size.product.image}")
	private String image;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "category_id", referencedColumnName = "id")
	private Category category;
}
