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

import com.se.fit.TravelProject.entities.Combo;
import com.se.fit.TravelProject.entities.Departure;
import com.se.fit.TravelProject.entities.Destination;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.service.DepartureService;
import com.se.fit.TravelProject.service.DestinationService;
import com.se.fit.TravelProject.service.TravelPackageService;

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
	
	@PostMapping("/save")
	public String booking(@RequestParam("comboId") int comboId, Model model) {
		Combo combo = travelPackageService.getComboById(comboId);
		return "";
	}
	
}
