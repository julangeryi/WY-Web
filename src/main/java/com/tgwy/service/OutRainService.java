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
	
	//历史查询--获取丢失测量点的测量时间 通过from和to
	public List<String> getRainQueryCategoryBySensorId(Integer sensorId,String from,String to);
	
	//历史查询--获取正常测量点的测量时间，通过from和to
	public List<String> getRainQueryNormaleCategoryBySensorId(Integer sensorId,String from,String to);
	
	
	//重载
	public List<String> getRainCategoryOverLoad(String from ,String to);

}
