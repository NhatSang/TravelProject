package com.se.fit.TravelProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.se.fit.TravelProject.entities.Tour;

public interface TourRepository extends JpaRepository<Tour, Integer>{

	@Query("SELECT t From Tour t WHERE t.departure.departureId =:departureId")
	public List<Tour> findByDepature(@Param("departureId") int departureId);
	@Query("SELECT t From Tour t WHERE t.destination.destinationId =:destinationId")
	public List<Tour> findByDestination(@Param("destinationId") String destinationId);
}
