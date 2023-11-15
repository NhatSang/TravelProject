package com.se.fit.TravelProject.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.se.fit.TravelProject.entities.Departure;
import com.se.fit.TravelProject.entities.Destination;
import com.se.fit.TravelProject.entities.EInternationalType;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.service.DepartureService;
import com.se.fit.TravelProject.service.DestinationService;
import com.se.fit.TravelProject.service.TravelPackageService;

@Controller
@RequestMapping("/Tour")
public class TourController {

	private TravelPackageService packageService;
	private DepartureService departureService;
	private DestinationService destinationService;

	@Autowired
	public TourController(TravelPackageService packageService, DepartureService departureService,
			DestinationService destinationService) {
		super();
		this.packageService = packageService;
		this.departureService = departureService;
		this.destinationService = destinationService;
	}

	@GetMapping("/showTour")
	public String showTour(@RequestParam("tourId") int tourId, Model model) {
		Tour tour = packageService.getTourById(tourId);
		model.addAttribute("TOUR", tour);
		return "TourDetail";
	}

	@GetMapping("/resultSearchTour")
	public String resultSearchTour(Model model) {
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		List<Tour> tours = packageService.getToursActive(LocalDate.now());
		model.addAttribute("SUM", tours.size());
		model.addAttribute("LISTDEP", departures);
		model.addAttribute("LISTDES", destinations);
		model.addAttribute("TOURS", tours);
		return "ResultSearchTour";
	}

	@GetMapping("/searchByDesADep")
	public String searchByDesADep(@RequestParam("departureId") int departureId,
			@RequestParam("destinationId") int destinationId, Model model) {
		List<Tour> tours = null;
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		if (departureId != 0 && destinationId != 0)
			tours = packageService.getToursByDesADep(departureId, destinationId, LocalDate.now());
		else if (departureId != 0 && destinationId == 0)
			tours = packageService.getToursByDep(departureId, LocalDate.now());
		else if (destinationId != 0 && departureId == 0)
			tours = packageService.getToursByDes(destinationId, LocalDate.now());
		else
			tours = packageService.getToursActive(LocalDate.now());
		model.addAttribute("SUM", tours.size());
		model.addAttribute("LISTDEP", departures);
		model.addAttribute("LISTDES", destinations);
		model.addAttribute("TOURS", tours);
		return "ResultSearchTour";
	}

	@GetMapping("/searchByInternationalType")
	public String searchByInternationalType(@RequestParam("type") String type, Model model) {
		List<Tour> tours = null;
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		if ("Foreign".equals(type)) {
			tours = packageService.getToursByInternationalType(EInternationalType.F, LocalDate.now());
		} else if ("Domestic".equals(type)) {
			tours = packageService.getToursByInternationalType(EInternationalType.D, LocalDate.now());
		}
		model.addAttribute("TOURS", tours);
		model.addAttribute("SUM", 0);
		model.addAttribute("LISTDEP", departures);
		model.addAttribute("LISTDES", destinations);
		return "ResultSearchTour";
	}
	
	@GetMapping("/booking")
	public String bookingTour(@RequestParam("tourId") int tourId, Model model ) {
		Tour tour = packageService.getTourById(tourId);
		model.addAttribute("TRAVELPACKAGE", tour);
		return "Booking";
	}
	
	@PostMapping("/saveBooking")
	public String booking(@RequestParam("tourId") int tourId, Model model) {
		Tour tour = packageService.getTourById(tourId);
		return "";
	}
	
	@GetMapping("/showListTours")
	public String showListTours(Model model) {
		List<Tour> list = packageService.getAllTours();
		model.addAttribute("LISTTOURS", list);
		return "ListTours";
	}
	
	@PostMapping("/saveTour")
	public String saveTour(@ModelAttribute("TOUR") Tour tour) {
		packageService.saveTour(tour);
		return "redirect:/Tour/showListTours";
	}
	
	@GetMapping("/addTour")
	public String showFormAdd(Model model) {
		Tour tour = new Tour();
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		model.addAttribute("TOUR", tour);
		model.addAttribute("LISTDEP", departures);
		model.addAttribute("LISTDES", destinations);
		return "TourForm";
	}
	
	@GetMapping("/updateTour")
	public String showFormUpdate(@RequestParam("tourId") int tourId,Model model) {
		Tour tour = packageService.getTourById(tourId);
		List<Departure> departures = departureService.getAllDepartures();
		List<Destination> destinations = destinationService.getAllDestinations();
		model.addAttribute("TOUR", tour);
		model.addAttribute("LISTDEP", departures);
		model.addAttribute("LISTDES", destinations);
		return "TourForm";
	}
}
