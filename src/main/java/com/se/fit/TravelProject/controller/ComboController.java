package com.se.fit.TravelProject.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.se.fit.TravelProject.entities.Combo;
import com.se.fit.TravelProject.entities.Departure;
import com.se.fit.TravelProject.entities.Destination;
import com.se.fit.TravelProject.entities.EComboType;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.service.DepartureService;
import com.se.fit.TravelProject.service.DestinationService;
import com.se.fit.TravelProject.service.TravelPackageService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/Combo")
public class ComboController {
	private TravelPackageService travelPackageService;
	private DepartureService departureService;
	private DestinationService destinationService;
	@Autowired
	public ComboController(TravelPackageService travelPackageService, DepartureService departureService,
			DestinationService destinationService) {
		super();
		this.travelPackageService = travelPackageService;
		this.departureService = departureService;
		this.destinationService = destinationService;
	}

	@GetMapping("/comBoTours")
	public String comBoTours(Model model) {
		List<Combo> listCombos = travelPackageService.getAllCombos();
		List<Destination> listDestinations = destinationService.getAllDestinations();
		List<Departure> listDepartures = departureService.getAllDepartures();
		model.addAttribute("listCombos", listCombos);
		model.addAttribute("listDepartures", listDepartures);
		model.addAttribute("listDestinations", listDestinations);
		model.addAttribute("sum", listCombos.size());
		return "ResultSearchCombo";
	}
	
	@GetMapping("/searchDesAndDep")
	public String searchDesAndDep(@RequestParam("departureId") int departureId,
			@RequestParam("destinationId") int destinationId, Model model) {
		List<Combo> listCombos = null;
		List<Departure> listDepartures = departureService.getAllDepartures();
		List<Destination> listDestinations = destinationService.getAllDestinations();
		if (departureId != 0 && destinationId != 0)
			listCombos = travelPackageService.getCombosByDesADep(departureId, destinationId, LocalDate.now());
		else if (departureId != 0 && destinationId == 0)
			listCombos = travelPackageService.getCombosByDep(departureId, LocalDate.now());
		else if (destinationId != 0 && departureId == 0)
			listCombos = travelPackageService.getCombosByDes(destinationId, LocalDate.now());
		else
			listCombos = travelPackageService.getCombos(LocalDate.now());
		model.addAttribute("listCombos", listCombos);
		model.addAttribute("listDestinations", listDestinations);
		model.addAttribute("listDepartures", listDepartures);
		model.addAttribute("sum", listCombos.size());
		System.out.println(listCombos);
		return "ResultSearchCombo";
	}
	@GetMapping("/searchByComboType")
	public String searchByComboType(@RequestParam("type") String type,Model model) {
		List<Combo> list = null;
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		if("CH".equals(type)) {
			list = travelPackageService.getComboByComboType(EComboType.CH, LocalDate.now());
		}else if ("AH".equals(type)){
			list = travelPackageService.getComboByComboType(EComboType.AH, LocalDate.now());
		}
		model.addAttribute("listCombos", list);
		model.addAttribute("listDestinations", destinations);
		model.addAttribute("listDepartures", departures);
		model.addAttribute("sum", list.size());
		return "ResultSearchCombo";
	}
	
	@GetMapping("/showComboDetail")
	public String showComboDetail(@RequestParam("comboId") int comboId, Model model) {
		Combo combo = travelPackageService.getComboById(comboId);
		model.addAttribute("combo", combo);
		return "ComboDetail";
	}
	
	@GetMapping("/booking")
	public String bookingCombo(@RequestParam("comboId")int comboId, Model model) {
		Combo combo = travelPackageService.getComboById(comboId);
		model.addAttribute("TRAVELPACKAGE", combo);
		return "Booking";
	}
	
	@PostMapping("/saveBooking")
	public String booking(@RequestParam("comboId") int comboId, Model model) {
		Combo combo = travelPackageService.getComboById(comboId);
		return "";
	}
	
	@GetMapping("/showListCombos")
	public String showListCombos(Model model) {
		List<Combo> listCb = travelPackageService.getAllCombos();
		model.addAttribute("combos", listCb);
		return "ListCombos";
	}
	
	@PostMapping("/saveCombo")
	public String saveCombo(@ModelAttribute("combo") Combo combo) {
		travelPackageService.saveCombo(combo);
		return "redirect:/Combo/showListCombos";
	}
	
	@GetMapping("/addCombo")
	public String showFormAdd(Model model) {
		Combo combo = new Combo();
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		model.addAttribute("combo", combo);
		model.addAttribute("departures", departures);
		model.addAttribute("destinations", destinations);
		return "ComboForm";
	}
	
	@GetMapping("/updateCombo")
	public String showFormUpdate(@RequestParam("comboId") int comboId,Model model) {
		Combo combo = travelPackageService.getComboById(comboId);
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		model.addAttribute("combo", combo);
		model.addAttribute("departures", departures);
		model.addAttribute("destinations", destinations);
		return "ComboForm";
	}
	
	@GetMapping("/deleteCombo")
	public String  deleteCombo(@RequestParam("comboId") int comboId) {
		travelPackageService.deleteCombo(comboId);
		return "redirect:/Combo/showListCombos";
	}
	
	@GetMapping("/addComboToCart")
	public String addComboToCart(@RequestParam("comboId") int comboId, HttpSession session) {
	    Combo combo = travelPackageService.getComboById(comboId);
	    System.out.println(combo);
	    if (combo != null) {
	        List<Combo> userCart = (List<Combo>) session.getAttribute("userCart");
	        if (userCart == null) {
	            userCart = new ArrayList<>();
	            session.setAttribute("userCart", userCart);
	        }
	        userCart.add(combo);
	        session.setAttribute("userCart", userCart);
	        return "GioHang";
	    } else {
	        return "GioHang";
	    }
	}
	
	
}
