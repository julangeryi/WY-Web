package com.tgwy.entity;

public class OutSAAEntity {

	private int num;
	private int detGroupId;
	private int sensorId;
	private double xValue;
	private double yValue;
	private int unix;
	private String dateTime;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getDetGroupId() {
		return detGroupId;
	}

	public void setDetGroupId(int detGroupId) {
		this.detGroupId = detGroupId;
	}

	public int getSensorId() {
		return sensorId;
	}

	public void setSensorId(int sensorId) {
		this.sensorId = sensorId;
	}

	public double getxValue() {
		return xValue;
	}

	public void setxValue(double xValue) {
		this.xValue = xValue;
	}

	public double getyValue() {
		return yValue;
	}

	public void setyValue(double yValue) {
		this.yValue = yValue;
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
