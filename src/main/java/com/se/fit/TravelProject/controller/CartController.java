package com.se.fit.TravelProject.controller;


import java.time.LocalDate;
import java.util.Iterator;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.se.fit.TravelProject.entities.User;
import com.se.fit.TravelProject.entities.Booking;
import com.se.fit.TravelProject.entities.CartItem;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.entities.TravelPackage;
import com.se.fit.TravelProject.service.AccountService;
import com.se.fit.TravelProject.service.BookingService;
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
	private BookingService bookingService;
	
	
	@Autowired
	public CartController(TravelPackageService travelPackageService, DepartureService departureService,
			DestinationService destinationService  ,AccountService accountService,UserService userService,BookingService bookingService) {
		super();
		this.travelPackageService = travelPackageService;
		this.departureService = departureService;
		this.destinationService = destinationService;
		this.accountService = accountService;
		this.userService = userService;
		this.bookingService = bookingService;
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
//	@PostMapping("/bookAllCombo")
//	public String bookAllTours(@RequestParam("userId") int userId, Model model,HttpSession session) {
//	    User user = userService.getUserById(userId);
//	    
//	    // Lấy danh sách các tour từ giỏ hàng (session userCart)
//	    List<CartItem> cartItems = (List<CartItem>) session.getAttribute("userCart");
//
//	    // Đặt từng tour trong giỏ hàng
//	    for (CartItem cartItem : cartItems) {
//	        int tourId = cartItem.getID();
//	        Object tour = travelPackageService.getComboById(tourId);
//
//	        // Giảm số chỗ còn nhận
//	        ((TravelPackage) tour).setAvailableSeats(((TravelPackage) tour).getAvailableSeats() - 1);
//	        travelPackageService.saveCombo(tour);
//
//	        // Tạo và lưu thông tin đặt vé
//	        Booking booking = new Booking(user, tour, LocalDate.now());
//	        bookingService.saveBooking(booking);
//	    }
//
//	    // Xóa giỏ hàng sau khi đã đặt thành công
//	    session.removeAttribute("userCart");
//
//	    model.addAttribute("mess", "Bạn đã đặt thành công tất cả các tour trong giỏ hàng");
//	    return "redirect:/";
//	}
}
