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
	public List<String> getRainCategoryBySensorId(Integer sensorId);
	
	public List<Double> getRainHistoryQueryValue(Integer sensorId,String from ,String to);
	
	//通过sensor_id 获取正常测量点的测量时间
	public List<String> getRainNormaleCategoryBySensorId(Integer sensorId);
	
	//通过ID和时间获取特定的值
	public Double getRainValueByidAndTime(Integer sensorId,String dateTime);
	

}
