package com.se.fit.TravelProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.se.fit.TravelProject.entities.User;
import com.se.fit.TravelProject.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {
	private UserService userService;

	@Autowired
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}
	
	@GetMapping("/showUsers")
	public List<User> showUsers(){
		return userService.getAllUsers();
	}
}
