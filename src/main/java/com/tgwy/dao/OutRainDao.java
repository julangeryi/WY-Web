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
	
	
	//History
	
	public List<Double> getRainHistoryQueryValue(Integer sensorId,String from ,String to);
	
	//通过sensor_id 获取丢失测量点的测量时间
	public List<String> getRainCategoryBySensorId(Integer sensorId);
	
	//通过sensor_id 获取正常测量点的测量时间
	public List<String> getRainNormaleCategoryBySensorId(Integer sensorId);
	
	//通过ID和时间获取特定的值
	public Double getRainValueByidAndTime(Integer sensorId,String dateTime);
	
	

}
