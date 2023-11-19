package com.se.fit.TravelProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.se.fit.TravelProject.entities.Account;

public interface AccountRepository extends JpaRepository<Account, String> {
	boolean existsByUsername(String username);
}
