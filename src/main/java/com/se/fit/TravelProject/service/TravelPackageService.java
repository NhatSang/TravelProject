package com.se.fit.TravelProject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.fit.TravelProject.entities.Combo;
import com.se.fit.TravelProject.entities.Tour;
import com.se.fit.TravelProject.repository.ComboRepository;
import com.se.fit.TravelProject.repository.TourRepository;

@Service
public class TravelPackageService {
	private final TourRepository tourRepository;
	private final ComboRepository comboRepository;

	@Autowired
	public TravelPackageService(TourRepository tourRepository, ComboRepository comboRepository) {
		super();
		this.tourRepository = tourRepository;
		this.comboRepository = comboRepository;
	}

	public List<Tour> getAllTours() {
		return tourRepository.findAll();
	}

	public List<Combo> getAllCombos() {
		return comboRepository.findAll();
	}

	public Tour getTourById(int id) {
		Optional<Tour> rs = tourRepository.findById(id);
		Tour tour = null;
		if (rs.isPresent()) {
			tour = rs.get();
		} else {
			throw new RuntimeException("Not find");
		}
		return tour;
	}

	public Combo getComboById(int id) {
		Optional<Combo> rs = comboRepository.findById(id);
		Combo combo = null;
		if (rs.isPresent()) {
			combo = rs.get();
		} else {
			throw new RuntimeException("Not find");
		}
		return combo;
	}
	
	public void saveTour(Tour tour) {
		tourRepository.save(tour);
	}
	
	public void saveCombo(Combo combo) {
		comboRepository.save(combo);
	}
	
	public void deleteTour(int id) {
		tourRepository.deleteById(id);
	}
	
	public void deleteCombo(int id) {
		comboRepository.deleteById(id);
	}
}
