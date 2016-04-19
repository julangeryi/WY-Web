package com.tgwy.entity;

public class OutWaterLevelEntity {

	private int num;
	private int sensorId;
	private double value;
	private int unix;
	private String dateTime;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getSensorId() {
		return sensorId;
	}

	public void setSensorId(int sensorId) {
		this.sensorId = sensorId;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public int getUnix() {
		return unix;
	}

	public void setUnix(int unix) {
		this.unix = unix;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

}
