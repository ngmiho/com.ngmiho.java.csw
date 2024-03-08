package com.ngmiho.java.csw.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ngmiho.java.csw.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {
	Page<Account> findAll(Pageable pageable);
	Page<Account> findByUserNameContainingOrFirstNameContainingOrLastNameContaining(String userName, String firstName, String lastName, Pageable pageable);
	Page<Account> findByPhoneNumberContaining(String phoneNumber, Pageable pageable);
	Page<Account> findByEmailContaining(String email, Pageable pageable);
}
