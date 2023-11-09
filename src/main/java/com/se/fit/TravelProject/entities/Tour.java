package com.se.fit.TravelProject.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;

@Entity
@DiscriminatorValue("1")
public class Tour extends TravelPackage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4994622033259334777L;
	private int numberDays;
	@Column(columnDefinition = "nvarchar(255)")
	private String touristAttraction;
	@Column(columnDefinition = "nvarchar(255)")
	private String cuisine;
	@Column(columnDefinition = "nvarchar(255)")
	private String hotel;
	@Column(columnDefinition = "nvarchar(255)")
	private String idealTime;
	@Column(columnDefinition = "nvarchar(255)")
	private String object;
	@Enumerated(EnumType.ORDINAL)
	private EInternationalType internationalType;

	public Tour() {
		// TODO Auto-generated constructor stub
	}

	public Tour(int travelPackageId, String packageName, LocalDate departureDate, double price, String description,
			int availableSeats, Set<String> imagesList, EVehicle vehicle, Departure departure, Destination destination,
			int numberDays, String touristAttraction, String cuisine, String hotel, String idealTime, String object,
			EInternationalType internationalType) {
		super(travelPackageId, packageName, departureDate, price, description, availableSeats, imagesList, vehicle,
				departure, destination);
		this.numberDays = numberDays;
		this.touristAttraction = touristAttraction;
		this.cuisine = cuisine;
		this.hotel = hotel;
		this.idealTime = idealTime;
		this.object = object;
		this.internationalType = internationalType;
	}

	public Tour(String packageName, LocalDate departureDate, double price, String description, int availableSeats,
			Set<String> imagesList, EVehicle vehicle, Departure departure, Destination destination, int numberDays,
			String touristAttraction, String cuisine, String hotel, String idealTime, String object,
			EInternationalType internationalType) {
		super(packageName, departureDate, price, description, availableSeats, imagesList, vehicle, departure,
				destination);
		this.numberDays = numberDays;
		this.touristAttraction = touristAttraction;
		this.cuisine = cuisine;
		this.hotel = hotel;
		this.idealTime = idealTime;
		this.object = object;
		this.internationalType = internationalType;
	}

	public int getNumberDays() {
		return numberDays;
	}

	public void setNumberDays(int numberDays) {
		this.numberDays = numberDays;
	}

	public String getTouristAttraction() {
		return touristAttraction;
	}

	public void setTouristAttraction(String touristAttraction) {
		this.touristAttraction = touristAttraction;
	}

	public String getCuisine() {
		return cuisine;
	}

	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getIdealTime() {
		return idealTime;
	}

	public void setIdealTime(String idealTime) {
		this.idealTime = idealTime;
	}

	public String getObject() {
		return object;
	}

	public void setObject(String object) {
		this.object = object;
	}

	public EInternationalType getInternationalType() {
		return internationalType;
	}

	public void setInternationalType(EInternationalType internationalType) {
		this.internationalType = internationalType;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Tour [numberDays=" + numberDays + ", touristAttraction=" + touristAttraction + ", cuisine=" + cuisine
				+ ", hotel=" + hotel + ", idealTime=" + idealTime + ", object=" + object + ", internationalType="
				+ internationalType + "]";
	}

}
