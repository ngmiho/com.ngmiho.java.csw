package com.ngmiho.java.csw.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter
@Entity
@Table(name = "accounts")
public class Account implements Serializable {
	@Id
	@Column(name = "user_name", columnDefinition = "varchar(50)")
	@NotBlank(message = "{NotBlank.account.userName}")
	@Size(max = 50, message = "{Size.account.userName}")
	private String userName;
	
	@Column(columnDefinition = "varchar(50)")
	@NotBlank(message = "{NotBlank.account.password}")
	@Size(max = 50, message = "{Size.account.password}")
	private String password;
	
	@Column(name = "first_name", columnDefinition = "nvarchar(10)")
	@NotBlank(message = "{NotBlank.account.firstName}")
	@Size(max = 10, message = "{Size.account.firstName}")
	private String firstName;
	
	@Column(name = "last_name", columnDefinition = "nvarchar(30)")
	@NotBlank(message = "{NotBlank.account.lastName}")
	@Size(max = 30, message = "{Size.account.lastName}")
	private String lastName;
	
	private Integer gender;
	
	private LocalDate yob;
	
	@Column(name = "phone_number", columnDefinition = "varchar(12)")
	@NotBlank(message = "{NotBlank.account.phoneNumber}")
	@Size(max = 12, message = "{Size.account.phoneNumber}")
	private String phoneNumber;
	
	@Column(columnDefinition = "nvarchar(60)")
	@NotBlank(message = "{NotBlank.account.address}")
	@Size(max = 60, message = "{Size.account.address}")
	private String address;
	
	@Column(columnDefinition = "varchar(MAX)")
	@NotBlank(message = "{NotBlank.account.email}")
	@Size(max = 255, message = "{Size.account.email}")
	@Email(message = "{Email.account.email}")
	private String email;
	
	private Boolean active;
	
	private Boolean admin;
	
	@OneToMany(mappedBy = "account")
	private List<Order> orders;
}
