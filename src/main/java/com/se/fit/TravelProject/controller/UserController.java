package com.se.fit.TravelProject.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.se.fit.TravelProject.entities.Account;
import com.se.fit.TravelProject.entities.Combo;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.entities.User;
import com.se.fit.TravelProject.service.AccountService;
import com.se.fit.TravelProject.service.TravelPackageService;
import com.se.fit.TravelProject.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
	private UserService userService;
	private AccountService accountService;
	private TravelPackageService packageService;

	@Autowired
	public UserController(UserService userService, AccountService accountService, TravelPackageService packageService) {
		super();
		this.userService = userService;
		this.accountService = accountService;
		this.packageService = packageService;
	}

	@PostMapping("/login")
	public String login(HttpSession session, @RequestParam("username") String username,
			@RequestParam("password") String password, Model model) {
		Account account = accountService.getAccountById(username);
		if (account != null) {
			if (account.getPassword().equals(password)) {
				User user = userService.getUserById(account.getUser().getUserId());
				int userId = user.getUserId();
				String role = account.getRole().toString();
				session.setAttribute("USERID", userId);
				session.setAttribute("ROLEUSER", role);
				model.addAttribute("ROLE", account.getRole().toString());
				System.out.println(role);
				model.addAttribute("USER", user);
				System.out.println(userId);
				List<Tour> listTour = packageService.getToursActive(LocalDate.now());
				List<Combo> listCombo = packageService.getAllCombos();
				model.addAttribute("tours", listTour);
				model.addAttribute("combos", listCombo);
				return "Home";
			} else {
				model.addAttribute("ERROR", "Sai password");
				return "dangnhap";
			}
		} else {
			model.addAttribute("ERROR", "Username không tồn tại");
			return "dangnhap";
		}
	}

	@PostMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "dangnhap";
	}
}
