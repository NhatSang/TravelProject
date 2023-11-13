package com.se.fit.TravelProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.se.fit.TravelProject.entities.Combo;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.service.DepartureService;
import com.se.fit.TravelProject.service.DestinationService;
import com.se.fit.TravelProject.service.TravelPackageService;

@Controller
@RequestMapping("")
public class HomeController {
	private DepartureService departureService;
	private DestinationService destinationService;
	private TravelPackageService travelPackageService;
	
	
	
	@Autowired
	public HomeController(DepartureService departureService, DestinationService destinationService,
			TravelPackageService travelPackageService) {
		super();
		this.departureService = departureService;
		this.destinationService = destinationService;
		this.travelPackageService = travelPackageService;
	}




	@GetMapping("")
	public String getTour(Model model) {
		List<Tour> listTour = travelPackageService.getAllTours();
		List<Combo> listCombo = travelPackageService.getAllCombos();
		model.addAttribute("tours", listTour);
		model.addAttribute("combos", listCombo);
		System.out.println(listTour.get(1).getImagesList().iterator().toString());
		return "Home";
	}
	
	
}
