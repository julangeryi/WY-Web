package com.tgwy.dao;

import java.util.List;

import com.tgwy.entity.OutRainEntity;

public interface OutRainDao {
	
	public List<OutRainEntity> getRainInfo();
	
	public List<String> getRainCategory();
	
	public List<Integer> getRainLegendSensorID();
	
	public List<String> getRainLegend();
	
	public List<Double> getRainValue();
	
	public List<Double> getRainValueBySensorId(Integer sensorId);
	
	public List<String> getRainCategoryBySensorId(Integer sensorId);
	
	//History
	
	public List<Double> getRainHistoryQueryValue(Integer sensorId,String from ,String to);

}
