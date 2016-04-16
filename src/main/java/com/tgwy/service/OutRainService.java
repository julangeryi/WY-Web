package com.tgwy.service;

import java.util.List;

import com.tgwy.entity.OutRainEntity;

public interface OutRainService {
	
	public List<OutRainEntity> getRainInfo();
	
	public List<String> getRainCategory();
	
	public List<Integer> getRainLegendSensorID();
	
	public List<String> getRainLegend();
	
	public List<Double> getRainValue();
	
	public List<Double> getRainValueBySensorId(Integer sensorId);

}
