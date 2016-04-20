package com.tgwy.service;

import java.util.List;

public interface OutWaterLevelService {
	
	public List<String> getOutWaterLevelLegend ();
	
	public List<Integer> getOutWaterLevelLegendSensorID();
	
	public List<Double> getOutWaterLevelValue();
	
	public List<Double> getOutWaterLevelValueBySensorId(int sensorId);
	
	public List<String> getOutWaterLevelCategory();
	
	public List<Double> getOutWaterLevelHistoryQueryValue(Integer sensorId, String from ,String to);

}
