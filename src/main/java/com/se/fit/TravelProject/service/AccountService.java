package com.se.fit.TravelProject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.fit.TravelProject.entities.Account;
import com.se.fit.TravelProject.repository.AccountRepository;

@Service
public class AccountService {
	private final AccountRepository accountRepository;

	@Autowired
	public AccountService(AccountRepository accountRepository) {
		super();
		this.accountRepository = accountRepository;
	}
	
	public List<Account> getAllAccounts(){
		return accountRepository.findAll();
	}
	
	public Account getAccountById(int id) {
		Optional<Account> rs = accountRepository.findById(id);
		Account account = null;
		if(rs.isPresent()) {
			account = rs.get();
		}
		else {
			throw new RuntimeException("Not find");
		}
		return account;
	}
	
	public void saveAccount(Account account) {
		accountRepository.save(account);
	}
	
	public void deleteAccount(int id) {
		accountRepository.deleteById(id);
	}
}
