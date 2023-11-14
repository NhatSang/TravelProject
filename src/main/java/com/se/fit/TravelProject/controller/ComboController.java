package com.se.fit.TravelProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.se.fit.TravelProject.entities.Combo;
import com.se.fit.TravelProject.entities.Departure;
import com.se.fit.TravelProject.entities.Destination;
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
	
	
	
}
