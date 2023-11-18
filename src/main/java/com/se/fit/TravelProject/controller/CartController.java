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
import com.se.fit.TravelProject.entities.Combo;
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
			DestinationService destinationService, AccountService accountService, UserService userService,
			BookingService bookingService) {
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

	@GetMapping("/bookAll")
	public String bookAll(Model model, HttpSession session) {
		int userId = (int) session.getAttribute("USERID");

		User user = userService.getUserById(userId);

		// Get the list of cart items from the session (userCart)
		List<CartItem> cartItems = (List<CartItem>) session.getAttribute("userCart");
		System.out.println(cartItems);

		// Iterate through each item in the cart
		for (CartItem cartItem : cartItems) {
			int id = cartItem.getID();

			if (cartItem.isComboTour()) {
				Combo combo = travelPackageService.getComboById(id);

				if (combo.getAvailableSeats() > 0) {
					combo.setAvailableSeats(combo.getAvailableSeats() - 1);
					travelPackageService.saveCombo(combo);
					Booking booking = new Booking(user, combo, LocalDate.now());
					bookingService.saveBooking(booking);
				} else {
					model.addAttribute("messger", "Xin lỗi Tour này hết chỗ");
				   return "redirect:/Cart/showCart";
				}
			} else {

				Tour tour = travelPackageService.getTourById(id);

				if (tour.getAvailableSeats() > 0) {
					tour.setAvailableSeats(tour.getAvailableSeats() - 1);
					travelPackageService.saveTour(tour);
					Booking booking = new Booking(user, tour, LocalDate.now());
					bookingService.saveBooking(booking);
				} else {
					model.addAttribute("messger", "Xin lỗi Combo này hết chỗ");
					return "redirect:/Cart/showCart";
				}
			}
		}
		session.removeAttribute("userCart");

		session.setAttribute("bill", cartItems);

		session.setAttribute("acc", user);

		model.addAttribute("mess", "Bạn đã đặt thành công tất cả các tour trong giỏ hàng");
		return "PaySuccess";
	}
}
