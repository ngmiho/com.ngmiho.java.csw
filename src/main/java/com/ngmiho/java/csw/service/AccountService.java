package com.ngmiho.java.csw.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ngmiho.java.csw.entity.Account;

public interface AccountService {
	Account save(Account account);
	Account delete(Account account);
	Account update(Account account);
	Page<Account> findAll(Pageable pageable);
	Page<Account> findByUserNameContainingOrFirstNameContainingOrLastNameContaining(String userName, String firstName, String lastName, Pageable pageable);
	Page<Account> findByPhoneNumberContaining(String phoneNumber, Pageable pageable);
	Page<Account> findByEmailContaining(String email, Pageable pageable);
}
