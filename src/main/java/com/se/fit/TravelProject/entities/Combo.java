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
	@Column(name = " checkin_time")
	private int checkinTime;
	@Column(name = " checkout_time")
	private int checkoutTime;
	@Column(columnDefinition = "nvarchar(255)",name="vehicle_inf")
	private String vehicleInf;
	@Column(columnDefinition = "nvarchar(255)",name="combo_inf")
	private String comboInf;
	@Enumerated(EnumType.ORDINAL)
	@Column(name="combo_type")
	private EComboType comboType;

	public Combo() {
		// TODO Auto-generated constructor stub
	}

	public Combo(int travelPackageId, String packageName, LocalDate departureDate, LocalDate returnDate, double price,
			String description, int availableSeats, Set<String> imagesList, EVehicle vehicle, Departure departure,
			Destination destination, int checkinTime, int checkoutTime, String vehicleInf, String comboInf,
			EComboType comboType) {
		super(travelPackageId, packageName, departureDate, returnDate, price, description, availableSeats, imagesList,
				vehicle, departure, destination);
		this.checkinTime = checkinTime;
		this.checkoutTime = checkoutTime;
		this.vehicleInf = vehicleInf;
		this.comboInf = comboInf;
		this.comboType = comboType;
	}

	public Combo(String packageName, LocalDate departureDate, LocalDate returnDate, double price, String description,
			int availableSeats, Set<String> imagesList, EVehicle vehicle, Departure departure, Destination destination,
			int checkinTime, int checkoutTime, String vehicleInf, String comboInf, EComboType comboType) {
		super(packageName, departureDate, returnDate, price, description, availableSeats, imagesList, vehicle,
				departure, destination);
		this.checkinTime = checkinTime;
		this.checkoutTime = checkoutTime;
		this.vehicleInf = vehicleInf;
		this.comboInf = comboInf;
		this.comboType = comboType;
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
		return "Combo [checkinTime=" + checkinTime + ", checkoutTime=" + checkoutTime + ", vehicleInf=" + vehicleInf
				+ ", comboInf=" + comboInf + ", comboType=" + comboType + "]";
	}

}
