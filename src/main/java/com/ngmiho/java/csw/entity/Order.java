package com.ngmiho.java.csw.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
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
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter
@Entity
@Table(name = "orders")
public class Order implements Serializable {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private LocalDateTime createdDate;
	
	@NotEmpty(message = "{NotEmpty.order.totalPrice}")
	@Positive(message = "{Positive.order.totalPrice}")
	private Float totalPrice;
	
	@Column(columnDefinition = "varchar(30)")
	@NotBlank(message = "{NotBlank.order.street}")
	@Size(max = 30, message = "{Size.order.street}")
	private String street;
	
	@Column(columnDefinition = "varchar(20)")
	@NotBlank(message = "{NotBlank.order.ward}")
	@Size(max = 20, message = "{Size.order.ward}")
	private String ward;
	
	@Column(columnDefinition = "varchar(20)")
	@NotBlank(message = "{NotBlank.order.district}")
	@Size(max = 20, message = "{Size.order.district}")
	private String district;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "payment_method_id", referencedColumnName = "id")
	private PaymentMethod paymentMethod;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "order_record_id", referencedColumnName = "id")
	private OrderRecord orderRecord;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "account_id", referencedColumnName = "user_name")
	private Account account;
	
	@OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
	private List<OrderDetail> orderDetails;
}
