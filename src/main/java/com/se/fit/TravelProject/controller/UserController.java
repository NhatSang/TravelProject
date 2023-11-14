package com.se.fit.TravelProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.oracle.wls.shaded.org.apache.regexp.recompile;
import com.se.fit.TravelProject.entities.User;
import com.se.fit.TravelProject.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController {
	private UserService userService;

	@Autowired
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}
	
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User user){
		System.out.println(user);
		userService.saveUser(user);
		return "redirect:/user/showUsers";
	}
	
	@GetMapping("/deleteUsers")
	public String  deleteUsers(@RequestParam("userId") int id) {
		userService.deleteUser(id);
		return "redirect:/user/showUsers";
	}
	
	@GetMapping("/addUsers")
	public String  addUsers(Model theModel) {
		User user = new User();
		theModel.addAttribute("user", user);
		return "AddUserForm";
	
	}
	@GetMapping("/updateUsers")
	public String showFormForUpdate(@RequestParam("userId") int id, Model theModel) {
		User user = userService.getUserById(id);
		System.out.println(user);
		theModel.addAttribute("user", user);
		return "AddUserForm";
	}
	
	@GetMapping("/showUsers")
	public String showUsers(Model theModel){
		List<User> user = userService.getAllUsers();	
		theModel.addAttribute("user", user);
		System.out.println(user);
		return "UserForm";
	}
	
	
	

	
	
	
}
