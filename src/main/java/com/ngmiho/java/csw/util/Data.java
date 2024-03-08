package com.ngmiho.java.csw.util;

import java.time.LocalDate;

import com.ngmiho.java.csw.entity.Account;

public class Data {
	static {
		Account a0 = new Account("acc0", "123", "a0", "a0", 0, LocalDate.now(), "0900000000", "a aaa, aaa, aaa", "a0@gmail.com", true, true, null);
		Account a1 = new Account("acc1", "123", "a1", "a1", 1, LocalDate.now(), "0900000001", "b bbb, bbb, bbb", "a1@gmail.com", true, false, null);
		Account a2 = new Account("acc2", "123", "a2", "a2", 2, LocalDate.now(), "0900000002", "c ccc, ccc, ccc", "a2@gmail.com", true, true, null);
		Account a3 = new Account("acc3", "123", "a3", "a3", 0, LocalDate.now(), "0900000003", "d ddd, ddd, ddd", "a3@gmail.com", true, false, null);
		Account a4 = new Account("acc4", "123", "a4", "a4", 1, LocalDate.now(), "0900000004", "e eee, eee, eee", "a4@gmail.com", true, true, null);
		Account a5 = new Account("acc5", "123", "a5", "a5", 2, LocalDate.now(), "0900000005", "f fff, fff, fff", "a5@gmail.com", true, false, null);
		Account a6 = new Account("acc6", "123", "a6", "a6", 0, LocalDate.now(), "0900000006", "g ggg, ggg, ggg", "a6@gmail.com", true, true, null);
		Account a7 = new Account("acc7", "123", "a7", "a7", 1, LocalDate.now(), "0900000007", "h hhh, hhh, hhh", "a7@gmail.com", true, false, null);
		Account a8 = new Account("acc8", "123", "a8", "a8", 2, LocalDate.now(), "0900000008", "i iii, iii, iii", "a8@gmail.com", true, true, null);
		Account a9 = new Account("acc9", "123", "a9", "a9", 0, LocalDate.now(), "0900000009", "k kkk, kkk, kkk", "a9@gmail.com", true, false, null);
	}
}
