package com.se.fit.TravelProject.entities;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Account")
public class Account implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6758543535589076148L;
	@Id
	private String username;
	@Column(nullable = false)
	private String password;
	@Enumerated(EnumType.ORDINAL)
	private ERole role;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(String username, String password, ERole role, User user) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
		this.user = user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ERole getRole() {
		return role;
	}

	public void setRole(ERole role) {
		this.role = role;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Account [username=" + username + ", password=" + password + ", role=" + role + ", user=" + user + "]";
	}

}
