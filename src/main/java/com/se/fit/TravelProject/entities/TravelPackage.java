package com.se.fit.TravelProject.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Set;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.DiscriminatorType;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "travelPackage_type", discriminatorType = DiscriminatorType.INTEGER)
public abstract class TravelPackage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5600196550063011878L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int travelPackageId;
	@Column(columnDefinition = "nvarchar(255)")
	private String packageName;
	@Column(columnDefinition = "datetime2(7)")
	private LocalDate departureDate;
	@Column(columnDefinition = "datetime2(7)")
	private LocalDate returnDate;
	private double price;
	@Column(columnDefinition = "nvarchar(255)")
	private String description;
	private int availableSeats;
	@ElementCollection
	@CollectionTable(name = "Images", joinColumns = @JoinColumn(name = "travelPackageId"))
	@Column(name = "image", nullable = false)
	private Set<String> imagesList;
	@Enumerated(EnumType.ORDINAL)
	private EVehicle vehicle;
	@ManyToOne
	@JoinColumn(name = "departureId")
	private Departure departure;
	@ManyToOne
	@JoinColumn(name = "destinationId")
	private Destination destination;

	public TravelPackage() {
		// TODO Auto-generated constructor stub
	}

	public TravelPackage(int travelPackageId, String packageName, LocalDate departureDate, LocalDate returnDate,
			double price, String description, int availableSeats, Set<String> imagesList, EVehicle vehicle,
			Departure departure, Destination destination) {
		super();
		this.travelPackageId = travelPackageId;
		this.packageName = packageName;
		this.departureDate = departureDate;
		this.returnDate = returnDate;
		this.price = price;
		this.description = description;
		this.availableSeats = availableSeats;
		this.imagesList = imagesList;
		this.vehicle = vehicle;
		this.departure = departure;
		this.destination = destination;
	}

	public TravelPackage(String packageName, LocalDate departureDate, LocalDate returnDate, double price,
			String description, int availableSeats, Set<String> imagesList, EVehicle vehicle, Departure departure,
			Destination destination) {
		super();
		this.packageName = packageName;
		this.departureDate = departureDate;
		this.returnDate = returnDate;
		this.price = price;
		this.description = description;
		this.availableSeats = availableSeats;
		this.imagesList = imagesList;
		this.vehicle = vehicle;
		this.departure = departure;
		this.destination = destination;
	}

	public int getTravelPackageId() {
		return travelPackageId;
	}

	public void setTravelPackageId(int travelPackageId) {
		this.travelPackageId = travelPackageId;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public LocalDate getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(LocalDate departureDate) {
		this.departureDate = departureDate;
	}

	public LocalDate getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(LocalDate returnDate) {
		this.returnDate = returnDate;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(int availableSeats) {
		this.availableSeats = availableSeats;
	}

	public Set<String> getImagesList() {
		return imagesList;
	}

	public void setImagesList(Set<String> imagesList) {
		this.imagesList = imagesList;
	}

	public EVehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(EVehicle vehicle) {
		this.vehicle = vehicle;
	}

	public Departure getDeparture() {
		return departure;
	}

	public void setDeparture(Departure departure) {
		this.departure = departure;
	}

	public Destination getDestination() {
		return destination;
	}

	public void setDestination(Destination destination) {
		this.destination = destination;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "TravelPackage [travelPackageId=" + travelPackageId + ", packageName=" + packageName + ", departureDate="
				+ departureDate + ", returnDate=" + returnDate + ", price=" + price + ", description=" + description
				+ ", availableSeats=" + availableSeats + ", imagesList=" + imagesList + ", vehicle=" + vehicle
				+ ", departure=" + departure + ", destination=" + destination + "]";
	}

}
