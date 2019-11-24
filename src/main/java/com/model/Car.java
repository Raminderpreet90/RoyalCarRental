package com.model;

public class Car {
	
	private int carId;
	private String carModel;
	private String carRegno;
	private int carRate;
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public String getCarRegno() {
		return carRegno;
	}
	public void setCarRegno(String carRegno) {
		this.carRegno = carRegno;
	}
	public int getCarRate() {
		return carRate;
	}
	public void setCarRate(int carRate) {
		this.carRate = carRate;
	}
	public Car(int carId, String carModel, String carRegno, int carRate) {
		super();
		this.carId = carId;
		this.carModel = carModel;
		this.carRegno = carRegno;
		this.carRate = carRate;
	}
	public Car() {
		super();
	}

}
