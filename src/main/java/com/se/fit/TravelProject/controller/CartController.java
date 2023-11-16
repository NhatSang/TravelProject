package com.se.fit.TravelProject.controller;


import java.util.Iterator;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.se.fit.TravelProject.entities.User;
import com.se.fit.TravelProject.entities.CartItem;
import com.se.fit.TravelProject.service.AccountService;
import com.se.fit.TravelProject.service.DepartureService;
import com.se.fit.TravelProject.service.DestinationService;
import com.se.fit.TravelProject.service.TravelPackageService;
import com.se.fit.TravelProject.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/Cart")
public class CartController {
	private TravelPackageService travelPackageService;
	private DepartureService departureService;
	private DestinationService destinationService;
	private AccountService accountService;
	private UserService userService;
	
	
	@Autowired
	public CartController(TravelPackageService travelPackageService, DepartureService departureService,
			DestinationService destinationService  ,AccountService accountService,UserService userService) {
		super();
		this.travelPackageService = travelPackageService;
		this.departureService = departureService;
		this.destinationService = destinationService;
		this.accountService = accountService;
		this.userService = userService;
	}
	
	@GetMapping("/showCart")
	public String showCart() {
		return "GioHang";
	}
	@GetMapping("/decreaseQuantity")
	public String decreaseQuantity(@RequestParam("itemId") int itemId, HttpSession session) {
	    List<CartItem> userCart = (List<CartItem>) session.getAttribute("userCart");
	    
	    if (userCart != null) {
	        Iterator<CartItem> iterator = userCart.iterator();
	        while (iterator.hasNext()) {
	            CartItem item = iterator.next();
	            if (item.getID() == itemId) {
	                item.decreaseQuantity();
	                
	                // Nếu số lượng giảm về 0, xóa phần tử khỏi danh sách
	                if (item.getQuantity() == 0) {
	                    iterator.remove();
	                }
	                
	                break;
	            }
	        }  
	        session.setAttribute("userCart", userCart);
	    }
	    return "GioHang";
	}
}
