package com.ngmiho.java.csw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngmiho.java.csw.dao.AccountDAO;
import com.ngmiho.java.csw.entity.Account;
import com.ngmiho.java.csw.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	public Account save(Account account) {
		return accountDAO.save(account);
	}

	@Override
	public Account delete(Account account) {
		return accountDAO.save(account);
	}

	@Override
	public Account update(Account account) {
		return accountDAO.save(account);
	}

	@Override
	public Page<Account> findAll(Pageable pageable) {
		return accountDAO.findAll(pageable);
	}

	@Override
	public Page<Account> findByUserNameContainingOrFirstNameContainingOrLastNameContaining(String username, String firstName, String lastName, Pageable pageable) {
		return accountDAO.findByUserNameContainingOrFirstNameContainingOrLastNameContaining(username, firstName, lastName, pageable);
	}
	
	@Override
	public Page<Account> findByPhoneNumberContaining(String phonenumber, Pageable pageable) {
		return accountDAO.findByPhoneNumberContaining(phonenumber, pageable);
	}

	@Override
	public Page<Account> findByEmailContaining(String email, Pageable pageable) {
		return accountDAO.findByEmailContaining(email, pageable);
	}

}
