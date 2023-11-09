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
@DiscriminatorValue("2")
public class Combo extends TravelPackage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4783031539248453067L;
	@Column(columnDefinition = "datetime2(7)")
	private LocalDate returnDate;
	private int checkinTime;
	private int checkoutTime;
	@Column(columnDefinition = "nvarchar(255)")
	private String vehicleInf;
	@Column(columnDefinition = "nvarchar(255)")
	private String comboInf;
	@Enumerated(EnumType.ORDINAL)
	private EComboType comboType;

	public Combo() {
		// TODO Auto-generated constructor stub
	}

	public Combo(int travelPackageId, String packageName, LocalDate departureDate, double price, String description,
			int availableSeats, Set<String> imagesList, EVehicle vehicle, Departure departure, Destination destination,
			LocalDate returnDate, int checkinTime, int checkoutTime, String vehicleInf, String comboInf,
			EComboType comboType) {
		super(travelPackageId, packageName, departureDate, price, description, availableSeats, imagesList, vehicle,
				departure, destination);
		this.returnDate = returnDate;
		this.checkinTime = checkinTime;
		this.checkoutTime = checkoutTime;
		this.vehicleInf = vehicleInf;
		this.comboInf = comboInf;
		this.comboType = comboType;
	}

	public Combo(String packageName, LocalDate departureDate, double price, String description, int availableSeats,
			Set<String> imagesList, EVehicle vehicle, Departure departure, Destination destination,
			LocalDate returnDate, int checkinTime, int checkoutTime, String vehicleInf, String comboInf,
			EComboType comboType) {
		super(packageName, departureDate, price, description, availableSeats, imagesList, vehicle, departure,
				destination);
		this.returnDate = returnDate;
		this.checkinTime = checkinTime;
		this.checkoutTime = checkoutTime;
		this.vehicleInf = vehicleInf;
		this.comboInf = comboInf;
		this.comboType = comboType;
	}

	public LocalDate getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(LocalDate returnDate) {
		this.returnDate = returnDate;
	}

	public int getCheckinTime() {
		return checkinTime;
	}

	public void setCheckinTime(int checkinTime) {
		this.checkinTime = checkinTime;
	}

	public int getCheckoutTime() {
		return checkoutTime;
	}

	public void setCheckoutTime(int checkoutTime) {
		this.checkoutTime = checkoutTime;
	}

	public String getVehicleInf() {
		return vehicleInf;
	}

	public void setVehicleInf(String vehicleInf) {
		this.vehicleInf = vehicleInf;
	}

	public String getComboInf() {
		return comboInf;
	}

	public void setComboInf(String comboInf) {
		this.comboInf = comboInf;
	}

	public EComboType getComboType() {
		return comboType;
	}

	public void setComboType(EComboType comboType) {
		this.comboType = comboType;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Combo [returnDate=" + returnDate + ", checkinTime=" + checkinTime + ", checkoutTime=" + checkoutTime
				+ ", vehicleInf=" + vehicleInf + ", comboInf=" + comboInf + ", comboType=" + comboType + "]";
	}

}
